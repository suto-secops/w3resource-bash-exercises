assert_executable "solution.sh"
run_solution --args 5.2 5.200
assert_matches_command "temp.txt" "sed 's/5.2/5.200/g' temp_orig.txt"
