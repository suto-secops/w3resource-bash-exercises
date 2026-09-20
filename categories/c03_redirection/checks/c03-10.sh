assert_executable "solution.sh"
run_solution
assert_exit_code 0
expected=$'This is line 1 of the document.\nThis is line 2 of the document.\nThis is line 3 of the document.'
assert_file_content_equals "document.txt" "$expected"
