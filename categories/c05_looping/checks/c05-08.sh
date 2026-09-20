assert_executable "solution.sh"
run_solution
assert_exit_code 0
assert_stdout_contains '^Random number divisible by 3 generated: [0-9]+$'

num=$(grep -oE '[0-9]+' "$SOL_STDOUT" | tail -n1)
if [ -n "$num" ] && [ $((num % 3)) -eq 0 ]; then
    _check_pass "the reported number is actually divisible by 3"
else
    _check_fail "the reported number is actually divisible by 3 (got: ${num:-N/A})"
fi
