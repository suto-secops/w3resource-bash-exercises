assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "rev temp_orig.txt"
