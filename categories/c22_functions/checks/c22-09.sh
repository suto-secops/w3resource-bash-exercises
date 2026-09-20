assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The square of 12 is: 144$"
assert_stdout_contains "^The square of 34 is: 1156$"
