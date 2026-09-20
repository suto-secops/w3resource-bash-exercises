assert_executable "solution.sh"
run_solution
assert_exit_code 0
expected="$(seq 10 -1 1)
Bash Script!"
assert_stdout_equals "$expected"
