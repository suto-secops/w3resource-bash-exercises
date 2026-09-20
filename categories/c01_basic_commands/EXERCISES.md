# Category 1 — Understanding basic commands

Adapted from [w3resource: Understanding basic commands](https://www.w3resource.com/bash-script-exercises/understanding-basic-commands.php).
Same intent as the original 10 exercises, reworded where needed so the
result is checkable by a script instead of by eye.

For every exercise: `bin/setup.sh <id>`, write your script as
`sandbox/<id>/solution.sh`, make it executable (`chmod +x solution.sh`),
then `bin/check.sh <id>` from the repo root.

### c01-01 — Echo basics

Write `solution.sh` that prints exactly `Hello, World!` (and nothing
else) using `echo`.

### c01-02 — Echo with a variable

Write `solution.sh` that reads a line from standard input into a
variable, then greets it: the output must contain the line
`Hello, <name>!` where `<name>` is whatever was read. You can print
whatever prompt you like before reading — the checker only cares that the
greeting line appears.

### c01-03 — cat command usage

The exercise comes with `sample.txt`. Write `solution.sh` that uses `cat`
to print its contents.

### c01-04 — Listing files

Write `solution.sh` that uses `ls` to list the files and directories in
its current working directory (no options — just plain `ls`).

### c01-05 — Echo with escape sequences

Write `solution.sh` that prints, using `echo` with escape sequences
interpreted (not `printf`), exactly:

```
This is Exercise-1.
	This is Exercise-2.
		This is Exercise-3.
```

(the second line has one leading tab, the third line has two).

### c01-06 — Command substitution with date

Write `solution.sh` that captures the output of `date` into a variable
using command substitution, then prints a line of the form
`Current date and time: <output of date>`.

### c01-07 — Concatenating two files

The exercise comes with `file1.txt` and `file2.txt`. Write `solution.sh`
that uses `cat` to print the contents of both, in that order.

### c01-08 — Output redirection

Write `solution.sh` that uses `echo` to write exactly `Hello, World!` — 
not to the terminal, but into a file named `output.txt` (created by the
redirection, not by any other command).

### c01-09 — ls with options

The exercise comes with a couple of files and a subdirectory already
there. Write `solution.sh` that uses `ls -l` to show detailed
information about the current directory's contents.

### c01-10 — Formatted output with tput

Write `solution.sh` that uses `tput` (not hardcoded escape codes) to
print a message in bold, and that message must contain the text
`This is a bold and red message.` somewhere in its (uncolored, once you
strip escape codes) content. Look up `tput bold`, `tput setaf`, and
`tput sgr0`.
