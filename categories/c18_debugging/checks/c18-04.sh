assert_executable "solution.sh"

run_solution --args 100 4
assert_stdout_contains "Result of division: 25"

run_solution --args 5 0
assert_stdout_contains "Error: Division by zero!"
