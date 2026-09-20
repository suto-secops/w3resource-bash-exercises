assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep -v "Bash" document.txt'
