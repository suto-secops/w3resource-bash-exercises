assert_executable "solution.sh"
run_solution
count=$(grep -v '^$' document.txt | wc -l)
assert_stdout_equals "Number of non-empty lines in document.txt: $count"
