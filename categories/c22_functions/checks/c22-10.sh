assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The result of 2 raised to the power of 5 is: 32$"
assert_stdout_contains "^The result of 100 raised to the power of 2 is: 10000$"
