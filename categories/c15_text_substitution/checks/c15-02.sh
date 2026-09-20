assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "tr '[:lower:]' '[:upper:]' < temp_orig.txt"
