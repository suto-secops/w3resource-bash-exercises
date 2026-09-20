# Category 6 — Script execution

Adapted from [w3resource: Script execution](https://www.w3resource.com/bash-script-exercises/script-execution.php).
A few of these overlap in spirit with category 1 — that's the source
material repeating itself too, not a mistake on this side.

### c06-01 — Print a fixed message

Print exactly `Hello, World!`.

### c06-02 — Current date and time

Print a line of the form `Current date and time: <output of date>`.

### c06-03 — Print a file's contents

The exercise comes with `output.txt`. Print its contents with `cat`.

### c06-04 — Run another script from yours

The exercise comes with an executable `test.sh`. From inside
`solution.sh`, actually invoke it (`./test.sh`) — don't just print the
same text yourself.

### c06-05 — Show the current username

Print a line of the form `Current user's username: <output of whoami>`.

### c06-06 — List the directory

Print the output of `ls` on the current directory.

### c06-07 — System uptime

Run `uptime` and print its output as-is.

### c06-08 — Disk space

Run `df -h` and print its output as-is.

### c06-09 — Memory usage

Run `free -h` and print its output as-is.

### c06-10 — CPU usage line

Run `top -bn1` piped into `grep` for the CPU line (look for `Cpu`).
