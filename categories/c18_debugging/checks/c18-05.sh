assert_executable "solution.sh"

# Fixture leaves workarea/ absent for this first run.
run_solution
assert_stdout_contains "Directory 'workarea' created successfully\."
assert_dir_exists "workarea"

run_solution
assert_stdout_contains "Directory 'workarea' already exists\."
