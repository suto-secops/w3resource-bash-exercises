assert_executable "solution.sh"

run_solution --args "someone@example.com"
assert_stdout_equals "someone@example.com - Match"

run_solution --args "first.last@sub.example.co.uk"
assert_stdout_equals "first.last@sub.example.co.uk - Match"

run_solution --args "invalid-email@com"
assert_stdout_equals "invalid-email@com - No Match"

run_solution --args "@example.com"
assert_stdout_equals "@example.com - No Match"

run_solution --args "user@com."
assert_stdout_equals "user@com. - No Match"
