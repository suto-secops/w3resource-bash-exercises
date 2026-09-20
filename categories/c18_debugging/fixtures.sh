#!/usr/bin/env bash
# Fixtures for c18_debugging.

fixture_c18_05() {
    :
    # deliberately empty: workarea/ must NOT exist yet for the first run
}

fixture_c18_07() {
    touch a.txt b.txt
    mkdir -p somedir
}

fixture_c18_08() {
    printf '1. This is line 1\n2. Another line with a digit at the beginning\n3. Line starting with a letter\n' >temp.txt
}
