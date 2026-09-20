assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command 'for file in *; do [ -L "$file" ] && echo "$file"; done'
