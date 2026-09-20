#!/usr/bin/env bash
# Fixtures for c06_script_execution.

fixture_c06_03() {
    printf 'first line of output.txt\nsecond line\n' >output.txt
}

fixture_c06_04() {
    printf '#!/bin/bash\necho "Test script output"\n' >test.sh
    chmod +x test.sh
}
