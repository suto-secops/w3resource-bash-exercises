assert_executable "solution.sh"

run_solution --args input.txt
assert_stdout_contains "File 'input.txt' found in the current directory\."

run_solution --args document.doc
assert_stdout_contains "File 'document.doc' not found in the current directory\."
