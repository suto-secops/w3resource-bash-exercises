assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep "^Bash" document.txt'
