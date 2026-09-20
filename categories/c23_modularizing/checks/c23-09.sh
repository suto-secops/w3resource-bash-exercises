assert_executable "solution.sh"
run_solution
assert_dir_exists "workarea_dir"
assert_stdout_contains "Directory 'workarea_dir' created\."
assert_stdout_contains "Directory 'workarea_dir' exists\."
assert_stdout_contains "Files in directory 'workarea_dir':"
