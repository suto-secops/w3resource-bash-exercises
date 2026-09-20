assert_executable "solution.sh"
run_solution
assert_stdout_equals "Number of characters in 'document.txt': $(wc -m <document.txt)"
