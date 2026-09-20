assert_executable "solution.sh"
run_solution
assert_exit_code 0

assert_stdout_contains "Password 'Password123!' is VALID\."
assert_stdout_contains "Password 'pass123!' is INVALID\."
assert_stdout_contains "Password 'PASSWORD123!' is INVALID\."
assert_stdout_contains "Password 'Password!' is INVALID\."
assert_stdout_contains "Password 'Password123' is INVALID\."
assert_stdout_contains "Password 'P@ssw0rd' is VALID\."
assert_stdout_contains "Password 'StrongP@ssw0rd' is VALID\."
assert_stdout_contains "Password 'WeakPassword123' is INVALID\."
assert_stdout_contains "Password '1234!@#\\\$' is INVALID\\."
assert_stdout_contains "Password 'Valid123@Pass' is VALID\."
assert_stdout_contains "Password 'Pas1#' is INVALID\."
