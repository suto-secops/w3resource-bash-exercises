assert_executable "solution.sh"
run_solution
assert_file_content_equals "extracted_files/file1.txt" "one"
assert_file_content_equals "extracted_files/file2.txt" "two"
assert_not_exists "extracted_files/file3.txt"
