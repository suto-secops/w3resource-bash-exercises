assert_executable "solution.sh"
run_solution --args error.log err.log
assert_file_not_contains "output.txt" "error\.log"
assert_file_contains "output.txt" "err\.log"
