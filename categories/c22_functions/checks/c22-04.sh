assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The product of 12 and 6 is: 72$"
assert_stdout_contains "^The product of 100 and -20 is: -2000$"
