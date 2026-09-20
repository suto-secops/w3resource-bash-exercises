assert_executable "solution.sh"
run_solution
assert_dir_exists "destination_dir"
assert_file_exists "destination_dir/a.txt"
assert_file_exists "destination_dir/b.txt"
assert_not_exists "destination_dir/c.log"
