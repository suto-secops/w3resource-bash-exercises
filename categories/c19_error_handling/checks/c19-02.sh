assert_executable "solution.sh"

run_solution --stdin $'12\n7\n'
assert_stdout_contains "Result of division: 1\.71"

run_solution --stdin $'5\n0\n'
assert_stdout_contains "Error: Division by zero"
