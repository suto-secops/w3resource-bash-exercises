assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command "find . -type f -mtime -1 -print"
