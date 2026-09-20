assert_executable "solution.sh"
run_solution
assert_is_symlink "link_to_file1"
actual_target=$(readlink "link_to_file1")
if [ "$actual_target" = "output.txt" ]; then
    _check_pass "'link_to_file1' stores the plain relative name output.txt"
else
    _check_fail "'link_to_file1' stores the plain relative name output.txt (got: ${actual_target:-N/A})"
fi
