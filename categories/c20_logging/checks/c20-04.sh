assert_executable "solution.sh"

run_solution
assert_not_exists "debug.log"

run_solution --args -d
assert_file_exists "debug.log"
assert_file_contains "debug.log" '\[DEBUG\].*Starting script'
assert_file_contains "debug.log" '\[DEBUG\].*Script completed'
