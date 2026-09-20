#!/usr/bin/env bash
# Fixtures for c11_archiving.

fixture_c11_01() {
    mkdir -p workarea
    echo "content" >workarea/marker.txt
}

fixture_c11_02() {
    mkdir -p _src/workarea extracted_files
    echo "content" >_src/workarea/marker.txt
    (cd _src && tar -cf ../workarea.tar workarea)
    rm -rf _src
}

fixture_c11_03() {
    mkdir -p workarea
    echo "content" >workarea/marker.txt
}

fixture_c11_04() {
    mkdir -p _src/workarea extracted_files
    echo "content" >_src/workarea/marker.txt
    (cd _src && tar -czf ../workarea.tar.gz workarea)
    rm -rf _src
}

fixture_c11_05() {
    mkdir -p workarea
    echo "content" >workarea/marker.txt
}

fixture_c11_06() {
    mkdir -p _src/workarea new_dir
    echo "content" >_src/workarea/marker.txt
    (cd _src && zip -rq ../workarea.zip workarea)
    rm -rf _src
}

fixture_c11_07() {
    mkdir -p source_directory
    echo "keep me" >source_directory/keep.bin
    echo "exclude me" >source_directory/skip.txt
}

fixture_c11_08() {
    echo "one" >file1.txt
    echo "two" >file2.txt
}

fixture_c11_09() {
    mkdir -p _src extracted_files
    echo "one" >_src/file1.txt
    echo "two" >_src/file2.txt
    echo "three" >_src/file3.txt
    (cd _src && tar -czf ../compressed_files.tar.gz file1.txt file2.txt file3.txt)
    rm -rf _src
}

fixture_c11_10() {
    mkdir -p workarea
    echo "secret content" >workarea/marker.txt
}
