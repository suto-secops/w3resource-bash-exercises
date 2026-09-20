assert_executable "solution.sh"

run_solution --stdin $'12\n10\n'
assert_stdout_contains "The maximum of 12 and 10 is 12"

run_solution --stdin $'abc\n5\n'
assert_stdout_contains "Please enter valid numbers\."
