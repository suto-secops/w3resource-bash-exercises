assert_executable "solution.sh"
run_solution --args alpha beta
assert_exit_code 0
assert_stdout_contains '^Number of arguments passed: 2$'
assert_stdout_contains '^All arguments passed: alpha beta$'
assert_stdout_contains '^Name of the script: \./solution\.sh$'
