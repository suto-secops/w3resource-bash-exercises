assert_executable "solution.sh"

run_solution --stdin $'level\n'
assert_stdout_contains 'The string "level" is a palindrome\.'

run_solution --stdin $'world\n'
assert_stdout_contains 'The string "world" is not a palindrome\.'
