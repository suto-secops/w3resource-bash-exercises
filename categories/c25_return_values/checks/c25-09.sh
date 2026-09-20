assert_executable "solution.sh"

run_solution --stdin $'3\n2\n'
assert_stdout_contains "3 raised to the power of 2 is 9"

run_solution --stdin $'4\n4\n'
assert_stdout_contains "4 raised to the power of 4 is 256"
