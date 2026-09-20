# Category 27 — Process management

Adapted from [w3resource: Process management](https://www.w3resource.com/bash-script-exercises/process-management.php).
Durations are shortened throughout (checkers run with a timeout) — the
mechanics are identical, just faster to grade.

### c27-01 — Background process PID

Run `sleep 5` in the background and print `Background process PID: <pid>`
using `$!`.

### c27-02 — Jobs and foreground (no job control in a script)

Run `sleep 5 &`, then run `jobs`, then attempt `fg %1`. Non-interactive
scripts don't have job control, so `fg` will fail with an error — that's
expected and correct, not something to work around.

### c27-03 — Background, wait, then SIGTERM

Start `sleep 20 &`, print its PID. Wait 2 seconds. Send it `SIGTERM`.
Check with `kill -0 $PID` whether it's still running and print
`Process <pid> has been terminated.` or `Process <pid> is still
running.` accordingly.

### c27-04 — Trapping SIGINT

Trap `SIGINT` with a function that prints `Caught SIGINT signal!
Exiting gracefully...` and exits `0`. Loop forever otherwise (e.g.
printing a message and sleeping 1 second each iteration) — the only way
out should be the trap.

### c27-05 — Ignoring SIGHUP, still trapping SIGINT

Same as c27-04, but also `trap '' SIGHUP` before the SIGINT trap, so
`SIGHUP` is ignored entirely (the process keeps running if it receives
one) while `SIGINT` still triggers the graceful exit.

### c27-06 — `nohup`

Use `nohup` to run a background command that prints `Output <n>` once a
second for a few iterations (e.g. `nohup bash -c 'for i in {1..10}; do
echo "Output $i"; sleep 1; done' &`), print its PID, wait 2 seconds,
send `SIGTERM`, and report whether it terminated (same pattern as
c27-03). Whatever it printed will land either in your own captured
output or in a `nohup.out` file, depending on how stdout is connected —
both are fine, that's `nohup`'s actual behavior, not something to force
one way.

### c27-07 — List all processes

Print the output of `ps aux`.

### c27-08 — Monitor a process until it exits

Start `sleep 6 &`, capture its PID, then loop with `kill -0 $PID`
printing `Process <pid> is still running...` every 1 second until it
exits, then print `Process <pid> has terminated.`.

### c27-09 — `pkill` by name

Start three background processes with `sleep 247 &` (an unusual,
specific duration on purpose), wait 1 second, then use `pkill -f "sleep
247"` to terminate all three at once.

### c27-10 — A simple daemon

Print `Daemon started with PID: <pid>` (capturing `$!` right after
backgrounding), then in the background, loop forever appending
`$(date)` to a file named `daemon.log` every 2 seconds. The checker
starts your script, waits briefly, checks the log has entries, then
kills the daemon using the PID you printed.
