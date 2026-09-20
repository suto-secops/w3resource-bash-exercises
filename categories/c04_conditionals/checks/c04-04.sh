assert_executable "solution.sh"

run_solution --stdin $'\n'
assert_stdout_contains 'The string is empty'

run_solution --stdin $'hello\n'
assert_stdout_contains 'The string is not empty'
