assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains 'load average'
assert_stdout_contains '^\s*PID'
