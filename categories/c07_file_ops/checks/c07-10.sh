assert_executable "solution.sh"
run_solution
assert_dirs_equal "source_dir" "destination_dir"
