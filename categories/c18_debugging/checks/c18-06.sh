assert_executable "solution.sh"
run_solution --stdin $'Hello\n'
assert_stdout_contains "You entered: Hello"
