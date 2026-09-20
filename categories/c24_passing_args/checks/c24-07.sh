assert_executable "solution.sh"
run_solution
assert_stdout_contains "^Length of 'Hello, world!' is: 13$"
assert_stdout_contains "^Substring from position 4 with length 3 in 'Hello, world!' is: 'o, '$"
assert_stdout_contains "^Concatenated string of 'Bash, ' and 'Script!' is: 'Bash, Script!'$"
