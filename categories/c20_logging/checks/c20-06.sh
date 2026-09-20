assert_executable "solution.sh"

# Fixture: log.txt exists with a small amount of content.
run_solution --args 1000000
assert_stdout_contains "Log file log\.txt is within size limit\."
assert_file_exists "log.txt"
assert_not_exists "log.txt.1.gz"

run_solution --args 5
assert_stdout_contains "Log file log\.txt exceeds maximum size, rotating\.\.\."
assert_file_exists "log.txt.1.gz"
assert_file_exists "log.txt"
if [ -s "log.txt" ]; then
    _check_fail "the freshly recreated log.txt is empty"
else
    _check_pass "the freshly recreated log.txt is empty"
fi
