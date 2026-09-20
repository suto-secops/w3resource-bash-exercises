assert_executable "solution.sh"
run_solution
assert_file_exists "log.txt"
assert_file_contains "log.txt" '^\[[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}\] This is a log message\.$'
