#!/usr/bin/env bash
# Fixtures for c14_grep_patterns. Most exercises share the same
# document.txt; checkers re-run the real grep against it (or its
# exercise-specific fixture) so exact matches never need to be hand-typed.

_c14_document() {
    printf '%s\n' \
        'Bash is a command processor that typically runs in a text window where the user types commands that cause actions.' \
        'Bash can also read and execute commands from a file, called a shell script.' \
        'Like most Unix shells, it supports filename globbing (wildcard matching), piping, here documents, command substitution, variables, and control structures for condition-testing and iteration.' \
        'The keywords, syntax, dynamically scoped variables and other basic features of the language are all copied from sh.' \
        'Other features, e.g., history, are copied from csh and ksh. Bash is a POSIX-compliant shell, but with a number of extensions.' \
        >document.txt
}

fixture_c14_01() { _c14_document; }
fixture_c14_03() { _c14_document; }
fixture_c14_05() { _c14_document; }
fixture_c14_06() { _c14_document; }
fixture_c14_07() { _c14_document; }
fixture_c14_08() { _c14_document; }
fixture_c14_09() { _c14_document; }
fixture_c14_10() { _c14_document; }
fixture_c14_11() { _c14_document; }
fixture_c14_12() { _c14_document; }
fixture_c14_13() { _c14_document; }
fixture_c14_14() { _c14_document; }

fixture_c14_02() {
    printf 'The bash shell is powerful.\n' >file1.txt
    printf 'Every shell has its own syntax.\n' >file2.txt
    printf 'Kernels manage hardware resources.\n' >file3.txt
}

fixture_c14_04() {
    mkdir -p search_dir/sub search_dir/sub2
    printf 'Bash is great.\n' >search_dir/file1.txt
    printf 'No match here.\n' >search_dir/sub/file2.txt
    printf 'Bash again, nested.\n' >search_dir/sub2/file3.txt
}

fixture_c14_15() {
    printf 'ABC12 DSFJOEW SDFSD ABC1NJU pqr66 Ko12.\n' >temp.txt
}
