assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The sum of 20 and 5 is: 25$"
assert_stdout_contains "^The difference between 20 and 5 is: 15$"
assert_stdout_contains "^The product of 20 and 5 is: 100$"
assert_stdout_contains "^The division of 20 by 5 is: 4\.00$"
