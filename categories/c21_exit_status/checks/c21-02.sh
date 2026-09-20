assert_executable "solution.sh"

run_solution
assert_stdout_contains '^File exists$'
assert_exit_code 0

rm -f temp.txt
run_solution
assert_stdout_contains '^File not found$'
assert_exit_code 1
