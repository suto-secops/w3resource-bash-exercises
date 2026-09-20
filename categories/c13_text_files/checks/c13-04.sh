assert_executable "solution.sh"

run_solution --args dynamically
assert_stdout_contains "String 'dynamically' found in 'document\.txt'\."

run_solution --args notpresent
assert_stdout_contains "String 'notpresent' not found in 'document\.txt'\."
