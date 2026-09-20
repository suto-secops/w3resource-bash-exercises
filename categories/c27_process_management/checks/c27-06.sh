assert_executable "solution.sh"
run_solution
assert_stdout_contains '^Process [0-9]+ has been terminated\.$'

if grep -q "Output 1" "$SOL_STDOUT" 2>/dev/null || { [ -f nohup.out ] && grep -q "Output 1" nohup.out; }; then
    _check_pass "the backgrounded command's own output ('Output 1') showed up somewhere"
else
    _check_fail "the backgrounded command's own output ('Output 1') showed up somewhere"
fi
