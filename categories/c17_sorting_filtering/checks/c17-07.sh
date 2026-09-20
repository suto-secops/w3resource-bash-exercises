assert_executable "solution.sh"
run_solution
assert_file_exists "filtered_data.txt"
assert_matches_command "filtered_data.txt" "awk 'length > 100' temp.txt"
