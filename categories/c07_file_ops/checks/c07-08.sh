assert_executable "solution.sh"
run_solution
assert_not_exists "error_1.log"
assert_not_exists "error_2.txt"
assert_file_exists "keep.txt"
