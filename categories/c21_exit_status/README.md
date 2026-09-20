# c21 — Exit status codes

`$?`, explicit `exit 0`/`exit 1`, wrapping existence/reachability/
process checks in proper exit codes, `gcc` compilation, `ping`, `pgrep`.

Source: [w3resource: Exit status codes](https://www.w3resource.com/bash-script-exercises/exit-status-codes.php)
(category 4 of 6: *Shell Script Debugging and Error Handling* — the
last one in this group, and this subcategory has 9 exercises, not 10).

c21-06 pings `127.0.0.1` rather than a real external host, and only the
reachable branch is checked (an unreachable-host test would mean a slow,
flaky timeout instead of a fast, reliable one).

See [`EXERCISES.md`](EXERCISES.md) — ids `c21-01` through `c21-09`.
