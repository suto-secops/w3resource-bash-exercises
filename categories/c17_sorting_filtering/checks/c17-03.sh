assert_executable "solution.sh"
run_solution
assert_file_exists "length_sorted_data.txt"
assert_matches_command "length_sorted_data.txt" "awk '{ print length, \$0 }' temp.txt | sort -n | cut -d' ' -f2-"
