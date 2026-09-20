assert_executable "solution.sh"

# Without job control, a non-interactive shell sets SIGINT/SIGQUIT to be
# ignored for anything it backgrounds with & -- and an inherited "ignored"
# disposition can't be overridden by a trap in the child, even
# intentionally. `set -m` turns job control on so the backgrounded
# solution.sh starts with the normal (not ignored) SIGINT disposition,
# matching how it behaves when actually run from an interactive terminal.
set -m
outfile=$(mktemp)
./solution.sh >"$outfile" 2>&1 &
pid=$!

sleep 1.5
kill -INT "$pid" 2>/dev/null
wait "$pid" 2>/dev/null
still_alive=$?

# Safety net: if the trap didn't work and the loop is still going, don't
# leave it running forever.
if kill -0 "$pid" 2>/dev/null; then
    kill -9 "$pid" 2>/dev/null
fi

if grep -q "Caught SIGINT signal! Exiting gracefully\.\.\." "$outfile"; then
    _check_pass "the script caught SIGINT and printed the graceful-exit message"
else
    _check_fail "the script caught SIGINT and printed the graceful-exit message"
fi
rm -f "$outfile"
