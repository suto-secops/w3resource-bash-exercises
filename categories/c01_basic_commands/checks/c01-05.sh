assert_executable "solution.sh"
run_solution
assert_exit_code 0
expected=$'This is Exercise-1.\n\tThis is Exercise-2.\n\t\tThis is Exercise-3.'
assert_stdout_equals "$expected"
