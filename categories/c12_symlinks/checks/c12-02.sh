assert_executable "solution.sh"

run_solution
assert_stdout_contains "Symbolic link 'file_link' exists in the current directory\."

rm -f file_link
run_solution
assert_stdout_contains "Symbolic link 'file_link' does not exist in the current directory\."
