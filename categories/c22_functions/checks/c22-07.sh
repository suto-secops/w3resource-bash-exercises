assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The maximum of 100 and 115 is: 115$"
assert_stdout_contains "^The maximum of -5 and -9 is: -5$"
