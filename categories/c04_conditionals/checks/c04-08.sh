assert_executable "solution.sh"

run_solution --stdin $'5\n'
assert_stdout_contains 'The number is positive\.'

run_solution --stdin $'-5\n'
assert_stdout_contains 'The number is negative\.'

run_solution --stdin $'0\n'
assert_stdout_contains 'The number is zero\.'
