assert_executable "solution.sh"
run_solution
assert_stdout_matches_command 'grep "shell" file1.txt file2.txt file3.txt'
