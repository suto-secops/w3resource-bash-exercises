assert_executable "solution.sh"
run_solution
assert_not_exists "dir_1"
assert_not_exists "dir_2"
assert_not_exists "dir_3"
assert_dir_exists "new_dir/dir_1"
assert_dir_exists "new_dir/dir_2"
assert_dir_exists "new_dir/dir_3"
