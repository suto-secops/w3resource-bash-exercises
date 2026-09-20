assert_executable "solution.sh"

run_solution
assert_stdout_contains '^Usage:'
assert_exit_code 1

run_solution --args notadir.txt
assert_stdout_contains 'notadir.txt is not a directory\.'
assert_exit_code 1

run_solution --args target_dir
assert_stdout_contains 'Files and directories in target_dir:'
assert_exit_code 0
