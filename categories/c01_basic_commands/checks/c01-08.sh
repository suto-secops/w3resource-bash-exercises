assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_not_contains 'Hello, World!'
assert_file_exists "output.txt"
assert_file_line_equals "output.txt" "Hello, World!"
