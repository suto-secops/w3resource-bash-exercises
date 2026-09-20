assert_executable "solution.sh"

run_solution --args 12 100
assert_stdout_contains "^Argument 1: 12$"
assert_stdout_contains "^Argument 2: 100$"

run_solution --args 12
assert_stdout_contains "^Usage: \./solution\.sh arg1 arg2$"
assert_exit_code 1
