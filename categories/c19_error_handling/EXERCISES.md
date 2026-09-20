# Category 19 — Handling errors and exceptions

Adapted from [w3resource: Handling errors and exceptions](https://www.w3resource.com/bash-script-exercises/handling-errors-and-exceptions.php).

### c19-01 — File existence, short form

Check whether `temp.txt` exists and print `File exists` or `File not
found` accordingly. (The checker creates and removes it between runs.)

### c19-02 — Division by zero, with decimals

Prompt for two numbers. If the second is zero, print `Error: Division
by zero`. Otherwise compute the division with two decimal places (`bc`
with `scale=2`) and print `Result of division: <result>`.

### c19-03 — Retry until valid input

Prompt for a number and keep re-prompting (printing `Invalid input.
Please input a number:` each time) until the input is made only of
digits. Once valid, print `Input is a valid number.` and stop.

### c19-04 — Require exactly two arguments

If your script isn't given exactly two arguments, print `Usage: $0 arg1
arg2` and exit non-zero. Otherwise print `Argument 1: <first>` and
`Argument 2: <second>`.

### c19-05 — Check whether a command exists

Your script takes one argument, a command name. Print `<name> exists`
or `<name> not found` accordingly (`command -v`, not just guessing from
`$PATH` by hand).

### c19-06 — Handle permission and existence errors

The exercise comes with `temp.txt`. If it's readable, print its
contents. If it exists but isn't readable, print `Error: Permission
denied while reading temp.txt.` and exit non-zero. If it doesn't exist
at all, print `Error: File temp.txt does not exist.` and exit non-zero.
The checker tests all three states.

### c19-07 — Validate yes/no input

Prompt for `yes` or `no`. Print `You entered 'yes'.` or `You entered
'no'.` accordingly; for anything else, print `Invalid input. Please
enter 'yes' or 'no'.`.

### c19-08 — Append and verify (again)

The exercise comes with `temp.txt`. Append exactly `This is a new line`
to it, check `$?`, and print `Line appended successfully.` if it
worked.

### c19-09 — Check-then-create a directory

Check whether a directory named `data` exists. If it does, print
`Directory exists`. If not, create it and print `Directory created`.
The checker runs your script twice to hit both branches.

### c19-10 — Handle a failing command

Attempt to run `ls -l file100.txt` (a file that doesn't exist in this
sandbox). If it fails, print `Command execution failed` and exit
non-zero.
