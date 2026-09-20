assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep '"'"'\b\w*ll\w*\b'"'"' document.txt'
