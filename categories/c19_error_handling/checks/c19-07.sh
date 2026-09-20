assert_executable "solution.sh"

run_solution --stdin $'yes\n'
assert_stdout_contains "You entered 'yes'\."

run_solution --stdin $'no\n'
assert_stdout_contains "You entered 'no'\."

run_solution --stdin $'hello\n'
assert_stdout_contains "Invalid input\. Please enter 'yes' or 'no'\."
