assert_executable "solution.sh"

run_solution --args ls
assert_stdout_contains "^ls exists$"

run_solution --args definitely_not_a_real_cmd_xyz
assert_stdout_contains "^definitely_not_a_real_cmd_xyz not found$"
