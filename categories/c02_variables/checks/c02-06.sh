assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_equals "The updated value of x is: 250"
