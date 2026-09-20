assert_executable "solution.sh"
run_solution
assert_dir_exists "extracted_files/workarea"
assert_file_content_equals "extracted_files/workarea/marker.txt" "content"
