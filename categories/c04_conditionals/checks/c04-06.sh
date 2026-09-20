assert_executable "solution.sh"

run_solution --stdin $'8\n'
assert_stdout_contains '8 is even\.'

run_solution --stdin $'7\n'
assert_stdout_contains '7 is odd\.'

run_solution --stdin $'abc\n'
assert_stdout_contains 'Invalid input'
assert_exit_code 1
