assert_executable "solution.sh"

run_solution --stdin $'4\n'
assert_stdout_contains "Is 4 a prime number\? false"

run_solution --stdin $'13\n'
assert_stdout_contains "Is 13 a prime number\? true"
