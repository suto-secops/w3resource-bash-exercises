# Category 21 — Exit status codes

Adapted from [w3resource: Exit status codes](https://www.w3resource.com/bash-script-exercises/exit-status-codes.php).
c21-06 (ping) uses `127.0.0.1` rather than a real external host, since
whether this sandbox has real internet access shouldn't be what the
exercise is testing.

### c21-01 — Capture and print an exit code

Run `ls` on a directory that doesn't exist (e.g. `/no_such_dir_xyz`),
capture `$?` right after, and print `Exit status code: <code>` (it'll be
some small positive number — which exact number is up to your system's
`ls`, not something to hardcode).

### c21-02 — Exit codes for existence

Check whether `temp.txt` exists. Print `File exists` and exit `0` if it
does; print `File not found` and exit `1` if it doesn't. The checker
tests both.

### c21-03 — Division with exit codes

Your script takes two arguments. If not given exactly two, print
`Usage: $0 <dividend> <divisor>` and exit `1`. If the divisor is zero,
print `Error: Division by zero` and exit `1`. Otherwise print `Result of
division: <result>` (two decimal places, via `bc`) and exit `0`.

### c21-04 — Does a user exist?

Your script takes one argument, a username (`id <name>` to check).
Print `User exists` and exit `0`, or `User not found` and exit `1`. With
the wrong number of arguments, print `Usage: $0 <username>` and exit
`1`.

### c21-05 — Compile a C program

Your script takes two arguments: an output executable name and a
source file. Compile with `gcc`. On success, print `Compilation
successful` and exit `0`. On failure, print `Compilation failed: check
errors` and exit `1`.

### c21-06 — Is a host reachable?

Your script takes one argument, a hostname or IP. Ping it once (`ping
-c 1`). Print `Host is reachable` and exit `0`, or `Host is unreachable`
and exit `1`.

### c21-07 — Does a directory exist?

Your script takes one argument, a directory path. Print `Directory
exists` and exit `0`, or `Directory not found` and exit `1`. With the
wrong number of arguments, print `Usage: $0 <directory>` and exit `1`.

### c21-08 — Rename a file, with exit codes

Your script takes two arguments, a current filename and a new one.
Rename it. On success, print `File renamed successfully` and exit `0`.
On failure (e.g. the source doesn't exist), print `Error: Failed to
rename file` and exit `1`.

### c21-09 — Is a process running?

Your script takes one argument, a process name (`pgrep` to check).
Print `Process is running` and exit `0`, or `Process not found` and
exit `1`.
