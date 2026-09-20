#!/usr/bin/env bash
# Fixtures for c09_searching_files.

fixture_c09_01() {
    touch output.txt
}

fixture_c09_02() {
    touch input.txt
}

fixture_c09_03() {
    touch recent.txt
    touch -d "10 days ago" old.txt
}

fixture_c09_04() {
    head -c 2000 /dev/zero >big.txt
    printf 'tiny\n' >small.txt
}

fixture_c09_05() {
    : >empty.txt
    printf 'content\n' >nonempty.txt
}

fixture_c09_06() {
    touch input.txt input1.txt note.log
    printf 'hidden\n' >.hidden.txt
}

fixture_c09_07() {
    printf 'hello world\n' >a.txt
    printf 'goodbye\n' >b.txt
    printf 'say hello again\n' >c.txt
}

fixture_c09_09() {
    printf 'real content\n' >target.txt
    ln -s target.txt my_link
}

fixture_c09_10() {
    printf '#!/bin/bash\necho hi\n' >exec.sh
    chmod +x exec.sh
    printf 'plain\n' >plain.txt
}
