#!/usr/bin/env bash
# Fixtures for c12_symlinks.

fixture_c12_01() {
    printf 'content\n' >input.txt
}

fixture_c12_02() {
    printf 'content\n' >input.txt
    ln -s input.txt file_link
}

fixture_c12_03() {
    printf 'content\n' >input.txt
    ln -s input.txt file_link
}

fixture_c12_04() {
    mkdir -p workarea
}

fixture_c12_05() {
    mkdir -p workarea
    printf 'not a dir\n' >regular_file.txt
    ln -s workarea dir_link
}

fixture_c12_06() {
    printf 'a\n' >a.txt
    mkdir -p somedir
    ln -s a.txt link_one
    ln -s somedir link_two
}

fixture_c12_07() {
    printf 'target content\n' >target.txt
    ln -s target.txt file_link
}

fixture_c12_08() {
    printf 'content\n' >input.txt
}

fixture_c12_09() {
    printf 'content\n' >output.txt
}
