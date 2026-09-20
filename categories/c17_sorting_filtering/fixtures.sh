#!/usr/bin/env bash
# Fixtures for c17_sorting_filtering.

_c17_temp() {
    printf 'This text is a brief description of the Bash shell version 5.2 features available today.\nThis is Edition 5.2, last updated for Bash Version 5.2.\n' >temp.txt
}

fixture_c17_01() { _c17_temp; }
fixture_c17_02() { _c17_temp; }
fixture_c17_03() { _c17_temp; }
fixture_c17_05() { _c17_temp; }
fixture_c17_06() { _c17_temp; }
fixture_c17_07() { _c17_temp; }

fixture_c17_04() {
    printf '10 apples\n2 bananas\n33 cherries\n4 dates\n' >temp.txt
}

fixture_c17_08() {
    printf 'prefix_hello\nprefix_world\nprefix_example\nnot_prefixed_line\nprefix_text\n' >temp.txt
}

fixture_c17_09() {
    printf 'This is line 1.\nThis is line 2.\nThis is line 3.\nThis is line 1.\nThis is line 4.\nThis is line 2.\nThis is line 5.\n' >temp.txt
}
