assert_executable "solution.sh"

run_solution
assert_file_exists "log.txt"
assert_file_contains "log.txt" 'Starting script execution\.'
assert_file_not_contains "log.txt" '\[VERBOSE\]'

run_solution --args -v
assert_file_contains "log.txt" '\[VERBOSE\]'
