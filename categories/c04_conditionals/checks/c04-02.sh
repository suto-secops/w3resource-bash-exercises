assert_executable "solution.sh"

rm -f test.txt
run_solution
assert_stdout_contains 'File does not exist'

touch test.txt
run_solution
assert_stdout_contains 'File exists'
