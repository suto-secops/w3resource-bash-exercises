assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_matches_command "cat datos.txt"
assert_file_exists "copia.txt"
assert_matches_command "copia.txt" "cat datos.txt"
