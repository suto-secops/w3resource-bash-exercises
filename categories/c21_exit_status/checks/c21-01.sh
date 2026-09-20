assert_executable "solution.sh"
run_solution
assert_stdout_contains '^Exit status code: [1-9][0-9]*$'
