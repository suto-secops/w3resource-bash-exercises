assert_executable "solution.sh"
run_solution --stdin $'12\n10\n'
assert_stdout_contains '^Sum: 22$'
assert_stdout_contains '^Difference: 2$'
assert_stdout_contains '^Product: 120$'
assert_stdout_contains '^Quotient: 1$'
assert_stdout_contains '^Remainder: 2$'
