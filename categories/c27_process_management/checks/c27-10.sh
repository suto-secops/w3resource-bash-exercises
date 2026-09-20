assert_executable "solution.sh"
run_solution
assert_stdout_contains '^Daemon started with PID: [0-9]+$'

daemon_pid=$(grep -oE '[0-9]+' "$SOL_STDOUT" | head -n1)

sleep 3
assert_file_exists "daemon.log"
assert_not_empty "daemon.log"

# Clean up the orphaned daemon loop so it doesn't keep running after the
# check is done.
if [ -n "$daemon_pid" ]; then
    kill "$daemon_pid" 2>/dev/null
fi
