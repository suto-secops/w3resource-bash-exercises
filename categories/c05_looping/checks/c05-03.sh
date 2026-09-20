assert_executable "solution.sh"

run_solution --stdin $'6\n'
assert_exit_code 0
for i in $(seq 1 10); do
    assert_stdout_contains "6 x $i = $((6 * i))"
done

run_solution --stdin $'-3\n'
assert_stdout_contains 'Invalid input'
assert_exit_code 1
