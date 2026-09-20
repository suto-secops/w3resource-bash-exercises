assert_executable "solution.sh"

rm -f test.txt
run_solution
assert_stdout_contains "File 'test\.txt' does not exist in the current directory\."

touch test.txt
run_solution
assert_stdout_contains "File 'test\.txt' exists in the current directory\."
