assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The result of 3 raised to the power of 4 is: 81$"
assert_stdout_contains "^The result of 10 raised to the power of 3 is: 1000$"
