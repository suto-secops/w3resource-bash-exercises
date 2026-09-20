assert_executable "solution.sh"

run_solution --args hello_out hello.c
assert_stdout_contains '^Compilation successful$'
assert_exit_code 0
assert_file_exists "hello_out"

run_solution --args broken_out broken.c
assert_stdout_contains '^Compilation failed: check errors$'
assert_exit_code 1
