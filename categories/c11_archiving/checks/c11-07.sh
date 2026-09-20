assert_executable "solution.sh"
run_solution
assert_file_exists "source_directory.tar"
tmp=$(mktemp -d)
tar -xf source_directory.tar -C "$tmp" 2>/dev/null
assert_file_exists "$tmp/source_directory/keep.bin"
assert_not_exists "$tmp/source_directory/skip.txt"
rm -rf "$tmp"
