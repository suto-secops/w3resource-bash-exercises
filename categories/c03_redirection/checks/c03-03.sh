assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_file_exists "salida.txt"
assert_matches_command "salida.txt" "cat entrada.txt"
