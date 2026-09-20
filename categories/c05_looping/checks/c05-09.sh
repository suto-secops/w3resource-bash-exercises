assert_executable "solution.sh"
run_solution --stdin $'wrong1\nwrong2\nPass23$\n'
assert_stdout_contains 'Incorrect password'
assert_stdout_contains 'Access granted'
