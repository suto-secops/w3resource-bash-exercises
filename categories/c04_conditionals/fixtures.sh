#!/usr/bin/env bash
# Fixtures for c04_conditionals.

fixture_c04_07() {
    printf '#!/bin/bash\necho "abc ran"\n' >abc.sh
    chmod 644 abc.sh
}
