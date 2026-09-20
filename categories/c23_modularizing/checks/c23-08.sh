assert_executable "solution.sh"
run_solution
assert_stdout_contains "^Length of 'Hello, world!' is: 13$"
assert_stdout_contains "^Substring from position 6 with length 4 in 'Hello, world!' is:  wor$"
assert_stdout_contains "^Concatenated string of 'Bash, ' and 'Scripting!' is: Bash, Scripting!$"
