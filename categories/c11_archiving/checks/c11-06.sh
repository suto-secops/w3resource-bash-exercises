assert_executable "solution.sh"
run_solution
assert_dir_exists "new_dir/workarea"
assert_file_content_equals "new_dir/workarea/marker.txt" "content"
