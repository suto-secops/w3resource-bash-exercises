assert_executable "solution.sh"

run_solution --stdin $'23\n21\n'
assert_stdout_contains "The minimum of 23 and 21 is 21"

run_solution --stdin $'abc\n5\n'
assert_stdout_contains "Please enter valid numbers\."
