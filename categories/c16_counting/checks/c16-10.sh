assert_executable "solution.sh"
run_solution
count=$(tr -s '[:space:]' '\n' <document.txt | tr '[:upper:]' '[:lower:]' | sort -u | wc -l)
assert_stdout_equals "Number of unique words in document.txt: $count"
