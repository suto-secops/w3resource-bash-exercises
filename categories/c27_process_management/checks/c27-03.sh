assert_executable "solution.sh"
run_solution
assert_stdout_contains '^Process [0-9]+ has been terminated\.$'
