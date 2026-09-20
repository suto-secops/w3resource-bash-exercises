assert_executable "solution.sh"
run_solution
assert_stdout_equals "Number of lines in document.txt: $(wc -l <document.txt)"
