assert_executable "solution.sh"

run_solution --stdin $'25\n'
assert_stdout_contains 'You are an adult'

run_solution --stdin $'10\n'
assert_stdout_contains 'You are a minor'
