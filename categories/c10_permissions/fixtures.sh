#!/usr/bin/env bash
# Fixtures for c10_permissions.

fixture_c10_01() {
    touch output.txt
    chmod 644 output.txt
}

fixture_c10_02() {
    touch input.txt
    chmod 666 input.txt
}

fixture_c10_03() {
    touch test.sh
    chmod 644 test.sh
}

fixture_c10_04() {
    mkdir -p workarea
}

fixture_c10_05() {
    mkdir -p parent_directory
    chmod 755 parent_directory
}

fixture_c10_06() {
    touch output.txt
    chmod 600 output.txt
}

fixture_c10_07() {
    touch my_script.sh
    chmod 755 my_script.sh
}

fixture_c10_08() {
    mkdir -p workarea
}

fixture_c10_09() {
    touch input.txt
    chmod 664 input.txt
}

fixture_c10_10() {
    touch my_script.sh
    chmod 000 my_script.sh
}
