assert_executable "solution.sh"
run_solution
assert_file_exists "reverse_sorted_data.txt"
assert_matches_command "reverse_sorted_data.txt" "sort -r temp.txt"
