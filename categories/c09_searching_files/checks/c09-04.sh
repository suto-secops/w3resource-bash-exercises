assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command 'for file in *; do if [ -f "$file" ] && [ $(stat -c %s "$file") -gt 1024 ]; then echo "$file"; fi; done'
