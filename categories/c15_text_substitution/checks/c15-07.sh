assert_executable "solution.sh"
run_solution
assert_matches_command "temp.txt" "awk '{\$1=\$1};1' temp_orig.txt"
