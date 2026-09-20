assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep -E '"'"'\b[A-Za-z]{3}[0-9]{2}\b'"'"' temp.txt'
