#!/usr/bin/env bash
# Sourced by bin/check.sh -- provides assert_* helpers for checker scripts.
#
# Checker scripts (categories/*/checks/<id>.sh) are *sourced*, not
# executed, from inside an exercise's sandbox directory (cwd is already
# there, and solution.sh -- the student's script -- lives right there
# too). They call run_solution to execute it and capture its behavior,
# then assert_* freely; each prints its own ok/fail line and tallies
# failures in CHECK_FAILURES. The caller (bin/check.sh) calls report() at
# the end to print the verdict and set the exit code.

CHECK_FAILURES=0

_check_pass() { printf '  \033[32m\xe2\x9c\x93\033[0m %s\n' "$1"; }
_check_fail() { printf '  \033[31m\xe2\x9c\x97\033[0m %s\n' "$1"; CHECK_FAILURES=$((CHECK_FAILURES + 1)); }

# Runs ./solution.sh, capturing stdout/stderr/exit code into a temp
# directory OUTSIDE the exercise directory (paths left in $SOL_STDOUT,
# $SOL_STDERR, $SOL_EXIT) -- deliberately not inside cwd, so an exercise
# whose solution runs `ls` or `ls -a` never sees our own bookkeeping
# files mixed into its output. Does NOT chmod solution.sh for you:
# whether it's executable is part of what's being graded (see
# assert_executable).
#
# Usage:
#   run_solution                          # no stdin, no args
#   run_solution --stdin $'Ada\n'         # feed stdin
#   run_solution --args foo bar           # pass argv (must be last)
#   run_solution --stdin $'Ada\n' --args foo bar
run_solution() {
    local stdin_text=""
    local args=()
    while [ $# -gt 0 ]; do
        case "$1" in
            --stdin)
                stdin_text=$2
                shift 2
                ;;
            --args)
                shift
                args=("$@")
                break
                ;;
            *) shift ;;
        esac
    done

    local capdir
    capdir=$(mktemp -d)
    SOL_STDOUT="$capdir/stdout"
    SOL_STDERR="$capdir/stderr"
    SOL_EXIT="$capdir/exit"

    if [ ! -f solution.sh ] || [ ! -x solution.sh ]; then
        : >"$SOL_STDOUT"
        : >"$SOL_STDERR"
        echo 126 >"$SOL_EXIT"
        return
    fi

    # A student's loop-heavy solution can genuinely hang (an off-by-one
    # in a `while` condition, a `break` that never fires). 10s is generous
    # for anything these exercises actually need; a hang shows up as exit
    # code 124, not a stuck check run.
    if [ -n "$stdin_text" ]; then
        printf '%s' "$stdin_text" | timeout 10 ./solution.sh "${args[@]}" >"$SOL_STDOUT" 2>"$SOL_STDERR"
    else
        timeout 10 ./solution.sh "${args[@]}" >"$SOL_STDOUT" 2>"$SOL_STDERR" </dev/null
    fi
    echo $? >"$SOL_EXIT"
}

assert_executable() {
    local path=$1 msg=${2:-"'$1' exists and is executable"}
    if [ -x "$path" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg (try: chmod +x $path)"
    fi
}

assert_exit_code() {
    local expected=$1 msg=${2:-"exit code is $1"}
    local actual
    actual=$(cat "$SOL_EXIT" 2>/dev/null)
    [ "$actual" = "$expected" ] && _check_pass "$msg" || _check_fail "$msg (got: ${actual:-N/A})"
}

# Thin wrappers around the generic assert_file_* helpers, pointed at
# whatever run_solution most recently captured. Prefer these over
# assert_file_* + $SOL_STDOUT/$SOL_STDERR directly -- same effect, but the
# checker reads as "what the script did" rather than "which temp file".
assert_stdout_equals() {
    local expected=$1 msg=${2:-"stdout matches exactly"}
    local actual
    actual=$(cat "$SOL_STDOUT" 2>/dev/null)
    [ "$actual" = "$expected" ] && _check_pass "$msg" || _check_fail "$msg"
}

assert_stdout_contains() {
    local pattern=$1 msg=${2:-"stdout contains a line matching '$1'"}
    assert_file_contains "$SOL_STDOUT" "$pattern" "$msg"
}

assert_stdout_not_contains() {
    local pattern=$1 msg=${2:-"stdout contains no line matching '$1'"}
    assert_file_not_contains "$SOL_STDOUT" "$pattern" "$msg"
}

assert_stdout_matches_all() {
    local pattern=$1 msg=${2:-"every line of stdout matches '$1'"}
    assert_file_matches_all "$SOL_STDOUT" "$pattern" "$msg"
}

assert_stdout_line_count() {
    local n=$1 msg=${2:-"stdout has $1 line(s)"}
    assert_line_count "$SOL_STDOUT" "$n" "$msg"
}

assert_stdout_matches_command() {
    local cmd=$1 msg=${2:-"stdout matches the output of: $1"}
    assert_matches_command "$SOL_STDOUT" "$cmd" "$msg"
}

assert_stderr_contains() {
    local pattern=$1 msg=${2:-"stderr contains a line matching '$1'"}
    assert_file_contains "$SOL_STDERR" "$pattern" "$msg"
}

assert_file_exists() {
    local path=$1 msg=${2:-"'$1' exists"}
    [ -f "$path" ] && _check_pass "$msg" || _check_fail "$msg"
}

assert_dir_exists() {
    local path=$1 msg=${2:-"directory '$1' exists"}
    [ -d "$path" ] && _check_pass "$msg" || _check_fail "$msg"
}

assert_not_exists() {
    local path=$1 msg=${2:-"'$1' does not exist"}
    [ ! -e "$path" ] && _check_pass "$msg" || _check_fail "$msg"
}

assert_is_symlink() {
    local path=$1 msg=${2:-"'$1' is a symbolic link"}
    [ -L "$path" ] && _check_pass "$msg" || _check_fail "$msg"
}

assert_symlink_to() {
    local path=$1 target=$2 msg=${3:-"'$1' is a symlink to '$2'"}
    if [ -L "$path" ] && [ "$(readlink -f -- "$path" 2>/dev/null)" = "$(readlink -f -- "$target" 2>/dev/null)" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_perm() {
    local path=$1 expected=$2 msg=${3:-"'$1' has permissions $2"}
    local actual
    actual=$(stat -c '%a' -- "$path" 2>/dev/null)
    [ "$actual" = "$expected" ] && _check_pass "$msg" || _check_fail "$msg (found: ${actual:-N/A})"
}

# $path contains at least one line matching the extended regex $pattern.
assert_file_contains() {
    local path=$1 pattern=$2 msg=${3:-"'$1' contains a line matching '$2'"}
    if [ -f "$path" ] && grep -Eq -- "$pattern" "$path"; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_file_not_contains() {
    local path=$1 pattern=$2 msg=${3:-"'$1' contains no line matching '$2'"}
    if [ -f "$path" ] && ! grep -Eq -- "$pattern" "$path"; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

# Every non-empty line of $path matches the extended regex $pattern.
assert_file_matches_all() {
    local path=$1 pattern=$2 msg=${3:-"every line of '$1' matches '$2'"}
    if [ -f "$path" ] && [ -s "$path" ] && [ -z "$(grep -Ev -- "$pattern" "$path")" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_line_count() {
    local path=$1 expected=$2 msg=${3:-"'$1' has $2 line(s)"}
    local actual
    actual=$(wc -l <"$path" 2>/dev/null | tr -d ' ')
    [ "$actual" = "$expected" ] && _check_pass "$msg" || _check_fail "$msg (found: ${actual:-N/A})"
}

assert_file_line_equals() {
    local path=$1 expected=$2 msg=${3:-"'$1' contains the exact line: $2"}
    if [ -f "$path" ] && grep -Fxq -- "$expected" "$path"; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_file_equals() {
    local path=$1 expected_file=$2 msg=${3:-"'$1' matches the expected result exactly"}
    if [ -f "$path" ] && diff -q -- "$path" "$expected_file" >/dev/null 2>&1; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

# Like assert_file_line_equals but for the file's *entire* content
# (multi-line ok), against a literal string you already have in hand --
# no second file needed.
assert_file_content_equals() {
    local path=$1 expected=$2 msg=${3:-"'$1' matches the expected content exactly"}
    local actual
    actual=$(cat -- "$path" 2>/dev/null)
    if [ -f "$path" ] && [ "$actual" = "$expected" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_not_empty() {
    local path=$1 msg=${2:-"'$1' is not empty"}
    if [ -s "$path" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_stdout_empty() {
    local msg=${1:-"stdout is empty"}
    if [ ! -s "$SOL_STDOUT" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_stderr_empty() {
    local msg=${1:-"stderr is empty"}
    if [ ! -s "$SOL_STDERR" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

# Compares $path against the live stdout of re-running $cmd (a string
# passed to `bash -c`, evaluated in the exercise directory). Use this when
# "correct" is most robustly defined as "whatever this command produces
# right now against the fixture files still sitting here" rather than a
# hand-typed expected value.
assert_matches_command() {
    local path=$1 cmd=$2 msg=${3:-"'$1' matches the output of: $2"}
    local expected actual
    expected=$(bash -c "$cmd" 2>/dev/null)
    actual=$(cat -- "$path" 2>/dev/null)
    if [ -f "$path" ] && [ "$actual" = "$expected" ]; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

assert_dirs_equal() {
    local dir1=$1 dir2=$2 msg=${3:-"'$1' and '$2' have the same content"}
    if [ -d "$dir1" ] && [ -d "$dir2" ] && diff -rq -- "$dir1" "$dir2" >/dev/null 2>&1; then
        _check_pass "$msg"
    else
        _check_fail "$msg"
    fi
}

report() {
    echo
    if [ "$CHECK_FAILURES" -eq 0 ]; then
        printf '\033[32mPASS\033[0m -- all checks passed.\n'
        return 0
    else
        printf '\033[31mFAIL\033[0m -- %d check(s) failed.\n' "$CHECK_FAILURES"
        return 1
    fi
}
