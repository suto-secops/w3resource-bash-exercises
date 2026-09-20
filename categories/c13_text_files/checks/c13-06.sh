assert_executable "solution.sh"
run_solution
expected=$'apple\nbanana\ncherry'
assert_file_content_equals "out.txt" "$expected"
