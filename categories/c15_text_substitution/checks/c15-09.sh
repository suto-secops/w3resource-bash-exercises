assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "sed 's/\$/ Text inserted at the end/' temp_orig.txt"
