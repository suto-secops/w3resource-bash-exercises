assert_executable "solution.sh"

run_solution --args 12 3
assert_stdout_contains 'Result of division: 4\.00'
assert_exit_code 0

run_solution --args 12 0
assert_stdout_contains 'Error: Division by zero'
assert_exit_code 1

run_solution --args 12
assert_stdout_contains '^Usage: \./solution\.sh <dividend> <divisor>$'
assert_exit_code 1
