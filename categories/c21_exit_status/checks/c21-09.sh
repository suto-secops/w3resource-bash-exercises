assert_executable "solution.sh"

run_solution --args bash
assert_stdout_contains '^Process is running$'
assert_exit_code 0

run_solution --args definitely_not_a_real_process_xyz
assert_stdout_contains '^Process not found$'
assert_exit_code 1
