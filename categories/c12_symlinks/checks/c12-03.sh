assert_executable "solution.sh"
run_solution
assert_not_exists "file_link"
assert_file_exists "input.txt"
