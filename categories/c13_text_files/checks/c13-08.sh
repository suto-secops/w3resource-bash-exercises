assert_executable "solution.sh"
run_solution
assert_file_exists "file.txt"
assert_matches_command "file.txt" "cat file1.txt file2.txt"
