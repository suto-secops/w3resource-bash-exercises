assert_executable "solution.sh"
run_solution
assert_stdout_contains "Line appended successfully\."
assert_file_line_equals "temp.txt" "1. This is line 1"
assert_file_line_equals "temp.txt" "This is a new line"
