assert_executable "solution.sh"

# Fixture leaves data/ absent for this first run.
run_solution
assert_stdout_contains "^Directory created$"
assert_dir_exists "data"

run_solution
assert_stdout_contains "^Directory exists$"
