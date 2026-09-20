assert_executable "solution.sh"
run_solution --stdin $'Pixel\n'
assert_exit_code 0
assert_stdout_contains 'My favorite mobile is Pixel\.'
