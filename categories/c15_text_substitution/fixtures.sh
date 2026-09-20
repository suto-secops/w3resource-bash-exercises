#!/usr/bin/env bash
# Fixtures for c15_text_substitution. Most exercises get temp.txt (to
# edit in place) plus temp_orig.txt (an untouched backup the checker
# uses to recompute the expected result live).

_c15_temp() {
    printf 'This text is a brief description of the Bash shell version 5.2 features.\nThis is Edition 5.2, last updated for Bash Version 5.2.\n' >temp.txt
    cp temp.txt temp_orig.txt
}

fixture_c15_01() { _c15_temp; }
fixture_c15_02() { _c15_temp; }
fixture_c15_03() { _c15_temp; }
fixture_c15_04() { _c15_temp; }
fixture_c15_05() { _c15_temp; }

fixture_c15_06() {
    printf 'This text is a brief description.\n\nThis is Edition 5.2.\n' >temp.txt
    cp temp.txt temp_orig.txt
}

fixture_c15_07() {
    printf '     This line has leading spaces and   internal   gaps.\nThis one has trailing spaces.   \n' >temp.txt
    cp temp.txt temp_orig.txt
}

fixture_c15_08() { _c15_temp; }
fixture_c15_09() { _c15_temp; }
