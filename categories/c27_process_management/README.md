# c27 — Process management

`&`/`$!`, `jobs`/`fg`, `kill`/`kill -0`, `trap`, `nohup`, `ps aux`,
`pkill`, background daemons.

Source: [w3resource: Process management](https://www.w3resource.com/bash-script-exercises/process-management.php)
(category 6 of 6: *Advanced Techniques*).

Several checkers here manage real processes directly (sending signals
mid-execution, cleaning up background jobs afterward) rather than just
running `solution.sh` once and checking its output — job control and
signal handling can't be observed any other way. Durations are
shortened from the original exercises so the whole suite still runs
quickly.

See [`EXERCISES.md`](EXERCISES.md) — ids `c27-01` through `c27-10`.
