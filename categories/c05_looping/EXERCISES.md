# Category 5 — Looping

Adapted from [w3resource: Looping](https://www.w3resource.com/bash-script-exercises/looping.php).

### c05-01 — Count up

Use a `for` loop to print the numbers 0 through 10, each on its own
line.

### c05-02 — Count down

Use a `while` loop to count down from 10 to 1 (each on its own line),
then print `Bash Script!`.

### c05-03 — Multiplication table

Prompt for a number, read it. If it isn't made of digits only, print a
message containing `Invalid input` and exit non-zero. Otherwise, using a
`for` loop, print a line for each of 1 through 10 in the form
`<n> x <i> = <product>` (e.g. for input `6`: `6 x 1 = 6`, `6 x 2 = 12`,
... up to `6 x 10 = 60`).

### c05-04 — Loop until "quit"

Use a `while` loop that keeps prompting for a name and reading it. For
each name that isn't `quit`, print `Hello, <name>!`. When `quit` is
entered, print `Exiting...` and stop the loop (don't greet "quit"
itself).

### c05-05 — List only regular files

The exercise comes with a couple of plain files and a subdirectory. Use
a `for` loop over `*` in the current directory, and print only the ones
that are regular files (not directories) — `[[ -f "$file" ]]`.

### c05-06 — Factorial

Prompt for a number, read it. If it isn't a non-negative integer, print
a message containing `Error` and exit non-zero. Otherwise, using a
`while` loop (not a formula), compute and print:
```
The factorial of <n> is: <result>
```
(0's factorial is 1.)

### c05-07 — Odd numbers only

Use a `for` loop over 1 through 20, printing only the odd numbers, each
on its own line.

### c05-08 — Loop until a condition on a random value

Use a `while` loop that keeps generating a random number between 1 and
50 (`$RANDOM`) until it gets one divisible by 3, then prints:
```
Random number divisible by 3 generated: <n>
```
and stops.

### c05-09 — Retry until correct

Use a `while` loop that keeps prompting for a password and comparing it
to the fixed value `Pass23$`. On a wrong guess, print a message
containing `Incorrect password` and prompt again. Once it matches, print
`Access granted` and stop.

### c05-10 — Greet a list

Declare an array named `names` with exactly these three elements, in
order: `Ann`, `Bo`, `Cy`. Use a `for` loop over the array to print, for
each one:
```
Hello, <name>! Welcome to the Bash script.
```
