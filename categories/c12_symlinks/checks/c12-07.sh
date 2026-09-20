assert_executable "solution.sh"
run_solution
assert_exit_code 0
expected_target=$(readlink -f target.txt)
assert_stdout_contains "Target of 'file_link': ${expected_target}"
