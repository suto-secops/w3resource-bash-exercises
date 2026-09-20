assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains '^Variable inside function: secret$'
assert_stdout_contains '^Variable outside function:[[:space:]]*$'
