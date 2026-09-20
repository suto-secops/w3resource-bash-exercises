assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "tac temp_orig.txt"
