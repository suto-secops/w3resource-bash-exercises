assert_executable "solution.sh"
run_solution
assert_file_exists "workarea.zip"
tmp=$(mktemp -d)
unzip -q workarea.zip -d "$tmp" </dev/null 2>/dev/null
assert_dirs_equal "workarea" "$tmp/workarea"
rm -rf "$tmp"
