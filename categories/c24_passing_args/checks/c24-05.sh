assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The result of 2 raised to the power of 3 is: 8$"
assert_stdout_contains "^The result of 10 raised to the power of 2 is: 100$"
