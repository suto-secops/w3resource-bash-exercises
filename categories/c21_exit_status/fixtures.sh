#!/usr/bin/env bash
# Fixtures for c21_exit_status.

fixture_c21_02() {
    touch temp.txt
}

fixture_c21_05() {
    cat >hello.c <<'EOF'
#include <stdio.h>
int main() {
    printf("Hello from C\n");
    return 0;
}
EOF
    cat >broken.c <<'EOF'
this is not valid C at all !!!
EOF
}

fixture_c21_07() {
    mkdir -p workarea
}

fixture_c21_08() {
    printf 'original content\n' >old_name.txt
}
