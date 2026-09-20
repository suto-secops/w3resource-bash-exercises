assert_executable "solution.sh"
run_solution
assert_stdout_contains "^The division of 24 by 5 is: 4\.80$"
assert_stdout_contains "^The division of 13 by 330 is: \.03$"
