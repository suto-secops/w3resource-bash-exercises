assert_executable "solution.sh"
run_solution
assert_file_exists "filtered_data.txt"
assert_matches_command "filtered_data.txt" "grep '^prefix_' temp.txt"
