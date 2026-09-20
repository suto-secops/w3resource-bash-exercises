assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The maximum of 101 and 201 is: 201$"
assert_stdout_contains "^The minimum of 12 and 17 is: 12$"
