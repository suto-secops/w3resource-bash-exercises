assert_executable "solution.sh"

# Fixture: dir_link -> workarea (a directory).
run_solution
assert_stdout_contains "points to a directory\."

rm -f dir_link
ln -s regular_file.txt dir_link
run_solution
assert_stdout_contains "does not point to a directory\."

rm -f dir_link
run_solution
assert_stdout_contains "does not exist\."
