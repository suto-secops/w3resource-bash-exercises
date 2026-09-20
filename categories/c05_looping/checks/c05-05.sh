assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command 'for f in *; do [ -f "$f" ] && echo "$f"; done'
