assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains 'This is a bold and red message\.'
