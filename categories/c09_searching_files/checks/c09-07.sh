assert_executable "solution.sh"
run_solution --args hello
assert_exit_code 0
assert_stdout_contains '^a\.txt$'
assert_stdout_contains '^c\.txt$'
assert_stdout_not_contains '^b\.txt$'
