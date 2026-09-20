assert_executable "solution.sh"
run_solution
count=$(grep -oE '[[:alnum:]]' document.txt | wc -l)
assert_stdout_equals "Number of characters in document.txt excluding spaces and special characters: $count"
