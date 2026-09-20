assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The factorial of 6 is: 720$"
assert_stdout_contains "^The factorial of 11 is: 39916800$"
