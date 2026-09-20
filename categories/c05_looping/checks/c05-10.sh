assert_executable "solution.sh"
run_solution
assert_exit_code 0
expected="Hello, Ann! Welcome to the Bash script.
Hello, Bo! Welcome to the Bash script.
Hello, Cy! Welcome to the Bash script."
assert_stdout_equals "$expected"
