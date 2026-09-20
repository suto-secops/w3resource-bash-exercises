assert_executable "solution.sh"
run_solution
assert_not_exists "workarea"
assert_dir_exists "new_workarea"
assert_file_exists "new_workarea/marker.txt"
