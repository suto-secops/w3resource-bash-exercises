assert_executable "solution.sh"
run_solution
assert_file_line_equals "temp.txt" "1. This is line 1"
assert_file_line_equals "temp.txt" "11. Line 11 with no number."
