assert_executable "solution.sh"

run_solution
assert_stdout_contains 'INFO: '
assert_stdout_contains 'WARNING: '
assert_stdout_contains 'ERROR: '
assert_stdout_contains '[0-9]{4}-[0-9]{2}-[0-9]{2}'

run_solution --args -f "%level: %message"
assert_stdout_contains '^INFO: '
assert_stdout_not_contains '[0-9]{4}-[0-9]{2}-[0-9]{2}'
