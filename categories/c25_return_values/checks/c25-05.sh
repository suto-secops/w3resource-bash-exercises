assert_executable "solution.sh"

run_solution --stdin $'4\n'
assert_stdout_contains "Factorial of 4 is 24"

run_solution --stdin $'abc\n'
assert_stdout_contains "Please enter a non-negative integer\."
