assert_executable "solution.sh"
run_solution
assert_file_exists "unique_data.txt"
assert_matches_command "unique_data.txt" "sort -u temp.txt"
