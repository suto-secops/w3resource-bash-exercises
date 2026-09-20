assert_executable "solution.sh"
run_solution
assert_symlink_to "dir_link" "workarea"
assert_dir_exists "dir_link"
