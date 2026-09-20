assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains 'Active Internet connections'
assert_stdout_contains 'Proto'
