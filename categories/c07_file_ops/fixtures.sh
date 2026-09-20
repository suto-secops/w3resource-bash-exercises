#!/usr/bin/env bash
# Fixtures for c07_file_ops.

fixture_c07_02() {
    printf 'error line 1\nerror line 2\n' >error.log
}

fixture_c07_03() {
    mkdir -p workarea
    touch workarea/marker.txt
}

fixture_c07_04() {
    echo "delete me" >file1.txt
}

fixture_c07_06() {
    mkdir -p source_directory
    echo "a" >source_directory/a.txt
    echo "b" >source_directory/b.txt
    echo "not txt" >source_directory/c.log
}

fixture_c07_07() {
    mkdir -p dir_1 dir_2 dir_3 new_dir
    touch dir_1/m1.txt dir_2/m2.txt dir_3/m3.txt
}

fixture_c07_08() {
    touch error_1.log error_2.txt keep.txt
}

fixture_c07_10() {
    mkdir -p source_dir/sub destination_dir
    echo "top" >source_dir/a.txt
    echo "nested" >source_dir/sub/b.txt
}
