#!/usr/bin/env bash
# Fixtures for c13_text_files.

fixture_c13_01() {
    printf 'line one\nline two\nline three\nline four\nline five\n' >document.txt
}

fixture_c13_02() {
    printf 'line one\nline two\nline three\nline four\nline five\n' >document.txt
}

fixture_c13_03() {
    printf 'line one\nline two\nline three\nline four\nline five\n' >document.txt
}

fixture_c13_04() {
    printf 'Bash variables are dynamically scoped in functions.\nMore text here.\n' >document.txt
}

fixture_c13_05() {
    printf 'saw error.log today\nanother error.log entry\nnothing here\n' >output.txt
}

fixture_c13_06() {
    printf 'banana\napple\ncherry\n' >out.txt
}

fixture_c13_07() {
    printf '<html>\n<body>\n<h1>JS Bin Editor</h1>\n<p>Some other text.</p>\n</body>\n</html>\n' >jsbin.html
}

fixture_c13_08() {
    printf 'first file\ncontent\n' >file1.txt
    printf 'second file\ncontent\n' >file2.txt
}

fixture_c13_09() {
    printf 'line one\n\nline two\n\n\nline three\n' >document.txt
    cp document.txt doc_orig.txt
}

fixture_c13_10() {
    printf 'Bash is a Unix shell.\nSecond line here.\n' >file1.txt
    cp file1.txt file1_orig.txt
}
