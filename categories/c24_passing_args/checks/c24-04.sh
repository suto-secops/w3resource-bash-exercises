assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The maximum of 200 and 150 is: 200$"
assert_stdout_contains "^The minimum of 12 and 11 is: 11$"
