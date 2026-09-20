assert_executable "solution.sh"
run_solution
assert_file_exists "workarea.tar"
tmp=$(mktemp -d)
tar -xf workarea.tar -C "$tmp" 2>/dev/null
assert_dirs_equal "workarea" "$tmp/workarea"
rm -rf "$tmp"
