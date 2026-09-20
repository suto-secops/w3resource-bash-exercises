#!/usr/bin/env bash
# Fixtures for c01_basic_commands. Sourced by bin/setup.sh, which then
# calls fixture_<id-with-underscores> (if it exists) with cwd already set
# to the exercise's sandbox directory. Exercises with no function here
# start from an empty directory (just solution.sh, once you write it).

fixture_c01_03() {
    printf 'Bash is a Unix shell and command language written by Brian Fox.\n' >sample.txt
}

fixture_c01_04() {
    touch alpha.txt beta.txt
    mkdir -p gamma_dir
}

fixture_c01_07() {
    printf 'Contents of file one.\nSecond line of file one.\n' >file1.txt
    printf 'Contents of file two.\n' >file2.txt
}

fixture_c01_09() {
    touch report.txt notes.txt
    mkdir -p archive
}
