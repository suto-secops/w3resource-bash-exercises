assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains 'empty\.txt'
assert_stdout_not_contains 'nonempty\.txt'
