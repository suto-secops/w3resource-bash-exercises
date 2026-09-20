assert_executable "solution.sh"

run_solution
assert_stdout_contains "^File exists$"

rm -f temp.txt
run_solution
assert_stdout_contains "^File not found$"
