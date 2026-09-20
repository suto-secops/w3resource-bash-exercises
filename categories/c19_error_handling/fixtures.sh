#!/usr/bin/env bash
# Fixtures for c19_error_handling.

fixture_c19_01() {
    touch temp.txt
}

fixture_c19_06() {
    printf '1. This is line 1\n2. Another line\n' >temp.txt
}

fixture_c19_08() {
    printf '1. This is line 1\n2. Another line\n' >temp.txt
}

fixture_c19_09() {
    :
    # deliberately empty: data/ must NOT exist yet for the first run
}
