assert_executable "solution.sh"
run_solution
maxlen=$(awk '{ if (length > max) max = length } END { print max }' document.txt)
assert_stdout_equals "Length of the longest line in document.txt: $maxlen characters"
