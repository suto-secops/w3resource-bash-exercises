assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The factorial of 5 is: 120$"
assert_stdout_contains "^The factorial of 10 is: 3628800$"
