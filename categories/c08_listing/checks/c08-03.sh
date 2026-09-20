assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command 'for dir in */; do [ -d "$dir" ] && echo "$dir"; done'
