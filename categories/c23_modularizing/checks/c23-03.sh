assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The factorial of 4 is: 24$"
assert_stdout_contains "^The factorial of 10 is: 3628800$"
