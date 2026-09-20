assert_executable "solution.sh"

run_solution --args "555-123-4567"
assert_stdout_equals "555-123-4567 - Match"

run_solution --args "123.456.7890"
assert_stdout_equals "123.456.7890 - Match"

run_solution --args "5551234567"
assert_stdout_equals "5551234567 - Match"

run_solution --args "123 456 7890"
assert_stdout_equals "123 456 7890 - No Match"

run_solution --args "123-45-6789"
assert_stdout_equals "123-45-6789 - No Match"

run_solution --args "123-456-78901"
assert_stdout_equals "123-456-78901 - No Match"
