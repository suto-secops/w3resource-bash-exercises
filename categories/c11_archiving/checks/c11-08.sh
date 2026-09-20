assert_executable "solution.sh"
run_solution
assert_file_exists "compressed_files.tar.gz"
tmp=$(mktemp -d)
tar -xzf compressed_files.tar.gz -C "$tmp" 2>/dev/null
assert_file_content_equals "$tmp/file1.txt" "one"
assert_file_content_equals "$tmp/file2.txt" "two"
rm -rf "$tmp"
