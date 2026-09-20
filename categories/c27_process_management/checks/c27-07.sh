assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains '^USER\s+PID'
assert_stdout_contains 'COMMAND'
