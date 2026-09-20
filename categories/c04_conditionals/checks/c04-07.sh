assert_executable "solution.sh"

# Fixture leaves abc.sh present but not executable.
run_solution
assert_stdout_contains 'Script is not executable'

chmod +x abc.sh
run_solution
assert_stdout_contains 'abc ran'

rm -f abc.sh
run_solution
assert_stdout_contains "File 'abc.sh' does not exist"
