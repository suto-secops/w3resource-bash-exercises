assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_equals "The result of doubling the number from nums.txt is: 42"
