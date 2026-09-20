assert_executable "solution.sh"
run_solution
assert_matches_command "document.txt" "grep -v '^\$' doc_orig.txt"
