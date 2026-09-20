assert_executable "solution.sh"
run_solution
assert_stdout_contains 'sleep 5'
assert_stderr_contains 'no job control'
