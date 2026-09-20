assert_executable "solution.sh"

# Fixture: temp.txt exists and is readable.
run_solution
assert_stdout_contains "This is line 1"

chmod 000 temp.txt
run_solution
assert_stdout_contains "Error: Permission denied while reading temp\.txt\."
assert_exit_code 1
chmod 644 temp.txt

rm -f temp.txt
run_solution
assert_stdout_contains "Error: File temp\.txt does not exist\."
assert_exit_code 1
