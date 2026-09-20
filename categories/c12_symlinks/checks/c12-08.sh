assert_executable "solution.sh"
run_solution
assert_is_symlink "link_to_file"
actual_target=$(readlink "link_to_file")
expected_target="$(pwd)/input.txt"
if [ "$actual_target" = "$expected_target" ]; then
    _check_pass "'link_to_file' stores the absolute path to input.txt"
else
    _check_fail "'link_to_file' stores the absolute path to input.txt (got: ${actual_target:-N/A})"
fi
