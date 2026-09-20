assert_executable "solution.sh"
run_solution
assert_stdout_contains "^19 is prime$"
assert_stdout_contains "^22 is not prime$"
