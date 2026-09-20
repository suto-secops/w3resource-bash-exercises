assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "sed 's/^/New Text - /' temp_orig.txt"
