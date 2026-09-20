assert_executable "solution.sh"
run_solution
assert_dir_exists "parent_directory"
assert_dir_exists "parent_directory/workarea"
assert_dir_exists "parent_directory/workarea/subworkarea1"
assert_dir_exists "parent_directory/workarea/subworkarea2"
assert_dir_exists "parent_directory/workarea2"
