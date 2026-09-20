assert_executable "solution.sh"

run_solution --stdin $'12\n'
assert_stdout_contains "The square of 12 is 144"

run_solution --stdin $'abc\n'
assert_stdout_contains "Please enter a valid number\."
