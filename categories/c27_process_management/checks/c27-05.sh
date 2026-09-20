assert_executable "solution.sh"

# See c27-04's checker for why this is needed: without job control,
# SIGINT/SIGQUIT would be forced to "ignored" for the backgrounded child
# and no trap inside it could override that.
set -m
outfile=$(mktemp)
./solution.sh >"$outfile" 2>&1 &
pid=$!

sleep 1
kill -HUP "$pid" 2>/dev/null
sleep 1

if kill -0 "$pid" 2>/dev/null; then
    _check_pass "the process is still running after SIGHUP (ignored, as intended)"
else
    _check_fail "the process is still running after SIGHUP (ignored, as intended)"
fi

kill -INT "$pid" 2>/dev/null
wait "$pid" 2>/dev/null

if kill -0 "$pid" 2>/dev/null; then
    kill -9 "$pid" 2>/dev/null
fi

if grep -q "Caught SIGINT signal! Exiting gracefully\.\.\." "$outfile"; then
    _check_pass "the script still catches SIGINT and exits gracefully"
else
    _check_fail "the script still catches SIGINT and exits gracefully"
fi
rm -f "$outfile"
