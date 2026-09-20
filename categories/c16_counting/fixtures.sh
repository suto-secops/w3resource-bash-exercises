#!/usr/bin/env bash
# Fixtures for c16_counting. Every exercise uses the same document.txt;
# checkers recompute the expected count live, so exact numbers never
# need to be hand-typed or hand-verified.

_c16_document() {
    printf '%s\n' \
        'Bash is a command processor that typically runs in a text window where the user types commands that cause actions.' \
        'Bash can also read and execute commands from a file, called a shell script.' \
        'Like most Unix shells, it supports filename globbing (wildcard matching), piping, here documents, command substitution, variables, and control structures for condition-testing and iteration.' \
        'The keywords, syntax, dynamically scoped variables and other basic features of the language are all copied from sh.' \
        'Other features, e.g., history, are copied from csh and ksh. Bash is a POSIX-compliant shell, but with a number of extensions.' \
        >document.txt
}

fixture_c16_01() { _c16_document; }
fixture_c16_02() { _c16_document; }
fixture_c16_03() { _c16_document; }
fixture_c16_04() { _c16_document; }
fixture_c16_05() { _c16_document; }
fixture_c16_06() { _c16_document; }
fixture_c16_07() { _c16_document; }
fixture_c16_08() { _c16_document; }
fixture_c16_09() { _c16_document; }
fixture_c16_10() { _c16_document; }
