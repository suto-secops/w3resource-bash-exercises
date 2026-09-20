assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "tr '[:upper:]' '[:lower:]' < temp_orig.txt"
