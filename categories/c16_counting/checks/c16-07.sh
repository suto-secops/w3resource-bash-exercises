assert_executable "solution.sh"
run_solution
count=$(grep -c "shell" document.txt)
assert_stdout_equals "Number of lines containing the word 'shell' in document.txt: $count"
