assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep '"'"'\b\w\{10,15\}\b'"'"' document.txt'
