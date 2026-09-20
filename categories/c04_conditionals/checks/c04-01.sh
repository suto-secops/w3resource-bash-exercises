assert_executable "solution.sh"

run_solution --stdin $'150\n'
assert_stdout_contains 'The number is greater than 100\.'

run_solution --stdin $'50\n'
assert_stdout_contains 'The number is not greater than 100\.'
