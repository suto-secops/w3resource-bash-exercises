assert_executable "solution.sh"
run_solution --stdin $'Ada\n'
assert_exit_code 0
assert_stdout_contains 'Hello, Ada!'
