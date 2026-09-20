assert_executable "solution.sh"

run_solution --stdin $'Secr3t!\n'
assert_stdout_contains 'Access granted'

run_solution --stdin $'wrong\n'
assert_stdout_contains 'Access denied'
