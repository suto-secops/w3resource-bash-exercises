assert_executable "solution.sh"
run_solution
assert_stdout_equals "Number of words in 'document.txt': $(wc -w <document.txt)"
