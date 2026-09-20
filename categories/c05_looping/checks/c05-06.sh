assert_executable "solution.sh"

run_solution --stdin $'5\n'
assert_stdout_contains 'The factorial of 5 is: 120'

run_solution --stdin $'0\n'
assert_stdout_contains 'The factorial of 0 is: 1'

run_solution --stdin $'-3\n'
assert_stdout_contains 'Error'
assert_exit_code 1
