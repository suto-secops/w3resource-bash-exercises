assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_equals "Current user's username: $(whoami)"
