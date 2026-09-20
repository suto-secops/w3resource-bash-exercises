assert_executable "solution.sh"
run_solution
assert_stdout_contains "20°C is equal to 68\.00°F"
assert_stdout_contains "68°F is equal to 20\.00°C"
