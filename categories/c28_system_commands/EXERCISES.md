# Category 28 — Interacting with system commands and utilities

Adapted from [w3resource: Interacting with system commands and utilities](https://www.w3resource.com/bash-script-exercises/interacting-with-system-commands-and-utilities.php).
Checkers here mostly check for a recognizable substring, since the
actual system info differs every run.

### c28-01 — Disk usage

Print the output of `df -h`.

### c28-02 — All running processes

Print the output of `ps -e`.

### c28-03 — Memory usage

Print the output of `free -h`.

### c28-04 — System uptime

Print the output of `uptime`.

### c28-05 — CPU information

Print the output of `lscpu`.

### c28-06 — Open network connections

Print the output of `netstat -tuln` (TCP+UDP, listening only, numeric
addresses).

### c28-07 — Logged-in users

Print the output of `who`. (In this container, nobody's "logged in" in
the traditional sense, so don't be surprised if this is empty — that's
the correct, real result here, not a bug.)

### c28-08 — System load and top processes

Print the output of `top -b -n 1 | head -n 20` (batch mode, one
iteration, first 20 lines).

### c28-09 — Block devices and filesystems

Print the output of `lsblk -f`.

### c28-10 — Tail the system log

The exercise comes with `/var/log/syslog` (pre-created for you, since
this minimal container doesn't run a real syslog daemon). Check for it
with `[ -f /var/log/syslog ]`; if present, print `Displaying the last 20
lines of /var/log/syslog:` followed by `tail -n 20 /var/log/syslog`.
(Real systems might use `/var/log/messages` or `journalctl` instead —
keep the same `elif`/`else` fallback structure even though this
exercise's checker only exercises the first branch.)
