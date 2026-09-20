assert_executable "solution.sh"
run_solution
assert_file_exists "workarea.tar.gz"
tmp=$(mktemp -d)
tar -xzf workarea.tar.gz -C "$tmp" 2>/dev/null
assert_dirs_equal "workarea" "$tmp/workarea"
rm -rf "$tmp"
