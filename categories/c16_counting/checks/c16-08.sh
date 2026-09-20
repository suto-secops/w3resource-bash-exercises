assert_executable "solution.sh"
run_solution
count=$(grep -o '\bis\b' document.txt | wc -l)
assert_stdout_equals "Number of occurrences of the word 'is' in document.txt: $count"
