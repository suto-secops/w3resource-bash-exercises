assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The sum of 25 and 30 is: 55$"
assert_stdout_contains "^The difference between 12 and 14 is: -2$"
assert_stdout_contains "^The product of 4 and 7 is: 28$"
assert_stdout_contains "^The division of 12 by 5 is: 2\.40$"
