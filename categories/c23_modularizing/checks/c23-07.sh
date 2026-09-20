assert_executable "solution.sh"
run_solution
assert_stdout_contains "File 'doc_file\.txt' created\."
assert_stdout_contains "File 'doc_file\.txt' exists\."
assert_stdout_contains "File 'doc_file\.txt' deleted\."
assert_stdout_contains "File 'doc_file\.txt' does not exist\."
assert_not_exists "doc_file.txt"
