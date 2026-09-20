assert_executable "solution.sh"
run_solution --stdin $'abc\n42\n'
assert_stdout_contains "Invalid input\. Please input a number:"
assert_stdout_contains "Input is a valid number\."
