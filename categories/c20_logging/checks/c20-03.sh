assert_executable "solution.sh"
run_solution
assert_file_exists "error.log"
assert_file_contains "error.log" "Error: File 'non_existent_file\.txt' not found\."
assert_file_contains "error.log" "Error: Division by zero\."
