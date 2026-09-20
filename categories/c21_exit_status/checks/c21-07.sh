assert_executable "solution.sh"

run_solution --args workarea
assert_stdout_contains '^Directory exists$'
assert_exit_code 0

run_solution --args no_such_dir_xyz
assert_stdout_contains '^Directory not found$'
assert_exit_code 1

run_solution
assert_stdout_contains '^Usage: \./solution\.sh <directory>$'
assert_exit_code 1
