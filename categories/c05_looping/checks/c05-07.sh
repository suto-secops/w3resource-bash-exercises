assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_equals "$(seq 1 2 20)"
