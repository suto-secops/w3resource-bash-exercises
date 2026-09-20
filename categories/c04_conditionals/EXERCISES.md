# Category 4 — Conditional statements

Adapted from [w3resource: Conditional statements](https://www.w3resource.com/bash-script-exercises/conditional-statements.php).
Most of these get tested against more than one input, both branches — the
checker feeds your script different stdin/state each time it runs it.

### c04-01 — Greater than 100

Prompt for a number, read it, and print `The number is greater than
100.` if it's over 100, otherwise `The number is not greater than 100.`

### c04-02 — Does the file exist?

Check whether a file named `test.txt` exists in the current directory.
Print `File exists` or `File does not exist` accordingly. (No starting
file — the checker creates and removes it between runs to test both
branches.)

### c04-03 — Age check

Prompt for an age, read it, and print `You are an adult` if it's 18 or
over, otherwise `You are a minor`.

### c04-04 — Empty string check

Prompt for a line of text (it may be empty), read it, and print `The
string is empty` or `The string is not empty` accordingly.

### c04-05 — Password check

Prompt for a password, read it, and compare it to the fixed value
`Secr3t!`. Print `Access granted` if it matches, `Access denied`
otherwise. (No need to hide the input as it's typed — that's a separate,
harder problem; just `read` normally.)

### c04-06 — Even, odd, or invalid

Prompt for a number, read it. If it isn't made up of digits only, print
a message containing `Invalid input` and exit with a non-zero status.
Otherwise print `<n> is even.` or `<n> is odd.`

### c04-07 — Check before running

Check whether `abc.sh` exists in the current directory:
- If it doesn't exist, print `File 'abc.sh' does not exist`.
- If it exists but isn't executable, print `Script is not executable`.
- If it exists and is executable, run it (`./abc.sh`) instead of printing
  anything yourself — let its own output speak.

### c04-08 — Positive, negative, or zero

Prompt for a number, read it, and print `The number is positive.`, `The
number is negative.`, or `The number is zero.` accordingly.

### c04-09 — Palindrome check

Prompt for a string, read it, and print exactly:
```
The string "<input>" is a palindrome.
```
or
```
The string "<input>" is not a palindrome.
```
(Test inputs here are plain lowercase letters, so you don't need to
worry about case-folding or stripping punctuation for this exercise —
though it's good practice.)

### c04-10 — Is someone logged in?

Get the current user with `whoami`, and print:
```
The logged-in user is: <username>
```
