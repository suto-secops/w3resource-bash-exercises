assert_executable "solution.sh"

run_solution --args "$(whoami)"
assert_exit_code 0
assert_stdout_matches_command "find . -maxdepth 1 -type f -user $(whoami)"

run_solution --args nonexistentuser123
assert_stderr_contains 'nonexistentuser123'
