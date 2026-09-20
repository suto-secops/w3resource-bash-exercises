assert_executable "solution.sh"

run_solution --args root
assert_stdout_contains '^User exists$'
assert_exit_code 0

run_solution --args definitely_no_such_user_xyz
assert_stdout_contains '^User not found$'
assert_exit_code 1

run_solution
assert_stdout_contains '^Usage: \./solution\.sh <username>$'
assert_exit_code 1
