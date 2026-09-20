# c28 — Interacting with system commands and utilities

`df`, `ps`, `free`, `uptime`, `lscpu`, `netstat`, `who`, `top`, `lsblk`,
conditional log-file tailing.

Source: [w3resource: Interacting with system commands and utilities](https://www.w3resource.com/bash-script-exercises/interacting-with-system-commands-and-utilities.php)
(category 6 of 6: *Advanced Techniques*).

Most checkers here look for a recognizable substring rather than an
exact value, since actual system info differs every run. c28-10 seeds a
fake `/var/log/syslog` (via `sudo`, since this container has no syslog
daemon) so the exercise's first branch runs deterministically.

See [`EXERCISES.md`](EXERCISES.md) — ids `c28-01` through `c28-10`.
