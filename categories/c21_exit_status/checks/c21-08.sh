assert_executable "solution.sh"

run_solution --args old_name.txt new_name.txt
assert_stdout_contains '^File renamed successfully$'
assert_exit_code 0
assert_not_exists "old_name.txt"
assert_file_exists "new_name.txt"

run_solution --args no_such_source.txt whatever.txt
assert_stdout_contains '^Error: Failed to rename file$'
assert_exit_code 1
