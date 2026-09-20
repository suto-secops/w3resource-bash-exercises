assert_executable "solution.sh"
run_solution
count=$(grep -oE '\b\w+\b' document.txt | grep -vFw -f <(printf '%s\n' the and) | wc -w)
assert_stdout_equals "Number of words in document.txt excluding 'the' and 'and': $count"
