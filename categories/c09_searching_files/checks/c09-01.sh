assert_executable "solution.sh"

run_solution
assert_stdout_contains "found in the current directory\."
assert_stdout_not_contains "not found"

rm -f output.txt
run_solution
assert_stdout_contains "not found in the current directory\."
