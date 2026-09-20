assert_executable "solution.sh"
run_solution --stdin $'TestPass123\n'
assert_file_exists "archive.zip"

tmp=$(mktemp -d)
if unzip -P "wrongpass" -o archive.zip -d "$tmp" </dev/null >/dev/null 2>&1; then
    _check_fail "archive.zip refuses extraction with the wrong password"
else
    _check_pass "archive.zip refuses extraction with the wrong password"
fi

rm -rf "${tmp:?}"/*
if unzip -P "TestPass123" -o archive.zip -d "$tmp" </dev/null >/dev/null 2>&1; then
    _check_pass "archive.zip extracts with the correct password"
else
    _check_fail "archive.zip extracts with the correct password"
fi
assert_file_content_equals "$tmp/workarea/marker.txt" "secret content"
rm -rf "$tmp"
