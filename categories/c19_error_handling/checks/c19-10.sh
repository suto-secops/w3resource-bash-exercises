assert_executable "solution.sh"
run_solution
assert_stdout_contains "^Command execution failed$"
assert_exit_code 1
