assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The difference between 35 and 12 is: 23$"
assert_stdout_contains "^The difference between 40 and 60 is: -20$"
