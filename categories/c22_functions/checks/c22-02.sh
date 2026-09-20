assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The sum of 10 and 20 is: 30$"
assert_stdout_contains "^The sum of 100 and 200 is: 300$"
