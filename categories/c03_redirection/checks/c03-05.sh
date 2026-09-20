assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_file_line_equals "log.txt" "linea previa"
assert_line_count "log.txt" "2"
