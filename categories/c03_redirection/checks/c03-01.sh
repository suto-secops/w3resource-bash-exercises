assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_empty
assert_file_exists "test.txt"
assert_matches_command "test.txt" "ls"
