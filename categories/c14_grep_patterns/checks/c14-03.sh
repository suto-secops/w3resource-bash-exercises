assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep -i "TYPES" document.txt'
