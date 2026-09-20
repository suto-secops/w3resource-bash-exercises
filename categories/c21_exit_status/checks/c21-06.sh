assert_executable "solution.sh"
run_solution --args 127.0.0.1
assert_stdout_contains '^Host is reachable$'
assert_exit_code 0
