assert_executable "solution.sh"
run_solution --stdin $'Ada\nBob\nquit\n'
assert_stdout_contains 'Hello, Ada!'
assert_stdout_contains 'Hello, Bob!'
assert_stdout_contains 'Exiting\.\.\.'
assert_stdout_not_contains 'Hello, quit!'
