assert_executable "solution.sh"
run_solution
assert_not_exists "file1.txt"
