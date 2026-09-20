assert_executable "solution.sh"
run_solution
assert_file_exists "old_error.log"
assert_file_equals "old_error.log" "error.log"
