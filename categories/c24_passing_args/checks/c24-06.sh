assert_executable "solution.sh"
run_solution
assert_stdout_contains "^3 and 5 are twin primes$"
assert_stdout_contains "^11 and 13 are twin primes$"
assert_stdout_contains "^9 and 11 are not twin primes$"
