assert_executable "solution.sh"
run_solution
assert_stderr_empty
assert_file_exists "error.log"
assert_not_empty "error.log"
