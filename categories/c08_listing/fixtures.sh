#!/usr/bin/env bash
# Fixtures for c08_listing.

fixture_c08_01() {
    touch visible.txt
    printf 'secret\n' >.hidden
    mkdir -p somedir
}

fixture_c08_02() {
    touch a.txt b.txt
    mkdir -p somedir
}

fixture_c08_03() {
    touch a.txt
    mkdir -p dir_one dir_two
}

fixture_c08_04() {
    mkdir -p target_dir
    touch target_dir/inside.txt
    touch notadir.txt
}

fixture_c08_05() {
    printf 'one\n' >.secret1
    printf 'two\n' >.secret2
    mkdir -p .hidden_dir
    touch plain.txt
}

fixture_c08_06() {
    touch recent.txt
    touch -d "10 days ago" old.txt
}

fixture_c08_07() {
    head -c 2097152 /dev/zero >big.bin
    echo "small" >small.txt
}

fixture_c08_08() {
    : >empty.txt
    echo "content" >nonempty.txt
}

fixture_c08_09() {
    touch a.txt b.txt c.log
}
