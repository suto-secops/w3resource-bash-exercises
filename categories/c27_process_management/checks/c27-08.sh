assert_executable "solution.sh"
run_solution
assert_stdout_contains 'is still running\.\.\.'
assert_stdout_contains '^Process [0-9]+ has terminated\.$'
