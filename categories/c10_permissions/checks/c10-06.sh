assert_executable "solution.sh"
run_solution
assert_perm "output.txt" "666"
