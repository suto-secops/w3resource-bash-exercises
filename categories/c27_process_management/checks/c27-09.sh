assert_executable "solution.sh"
run_solution
assert_exit_code 0

# By the time solution.sh has returned, its own pkill should already have
# run synchronously -- nothing matching this distinctive sleep duration
# should be left alive.
if pgrep -f "sleep 247" >/dev/null 2>&1; then
    _check_fail "no 'sleep 247' processes remain after the script finishes"
    pkill -f "sleep 247" 2>/dev/null
else
    _check_pass "no 'sleep 247' processes remain after the script finishes"
fi
