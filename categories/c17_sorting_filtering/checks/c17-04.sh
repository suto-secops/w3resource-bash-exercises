assert_executable "solution.sh"
run_solution
assert_file_exists "sorted_numbers.txt"
assert_matches_command "sorted_numbers.txt" "sort -n temp.txt"
