assert_executable "solution.sh"
run_solution
assert_file_exists "sorted_data.txt"
assert_matches_command "sorted_data.txt" "sort temp.txt"
