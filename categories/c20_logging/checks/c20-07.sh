assert_executable "solution.sh"
run_solution
assert_file_exists "log.txt"
assert_file_contains "log.txt" '\[INFO\]'
assert_file_contains "log.txt" '\[WARNING\]'
assert_file_contains "log.txt" '\[ERROR\]'
