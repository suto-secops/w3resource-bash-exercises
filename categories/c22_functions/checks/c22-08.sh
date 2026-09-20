assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The minimum of 100 and 115 is: 100$"
assert_stdout_contains "^The minimum of -12 and -15 is: -15$"
