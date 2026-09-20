assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep '"'"'\b[Pp]\w*'"'"' document.txt'
