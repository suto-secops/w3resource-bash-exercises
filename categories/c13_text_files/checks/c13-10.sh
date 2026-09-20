assert_executable "solution.sh"
run_solution
assert_matches_command "file1.txt" "tr '[:lower:]' '[:upper:]' < file1_orig.txt"
