# Category 18 — Debugging techniques

Adapted from [w3resource: Debugging techniques](https://www.w3resource.com/bash-script-exercises/debugging-techniques.php).
The theme here is checking before acting and verifying success
afterward (`$?`, existence tests) rather than new syntax — most of the
mechanics repeat earlier categories on purpose, that's the original
site's own structure.

### c18-01 — Print a fixed message

Print exactly `Hello, world!`.

### c18-02 — Via a variable

Same result, but assign the message to a variable first and echo the
variable — not the literal string directly in the `echo` call.

### c18-03 — Check before reporting

Check whether `test.txt` exists in the current directory, and print
`File 'test.txt' exists in the current directory.` or `File 'test.txt'
does not exist in the current directory.` accordingly. (The checker
creates and removes it between runs.)

### c18-04 — Guard against division by zero

Your script takes two arguments. If the second is zero, print `Error:
Division by zero!`. Otherwise print `Result of division: <result>`
using integer division.

### c18-05 — Check before creating

Check whether a directory named `workarea` exists. If it doesn't,
create it and print `Directory 'workarea' created successfully.`. If it
already exists, print `Directory 'workarea' already exists.` and leave
it alone. The checker runs your script twice in a row to hit both
branches.

### c18-06 — Read and echo back

Prompt for input, read it, and print `You entered: <input>`.

### c18-07 — List files, not directories

Using a `for` loop and `[ -f ... ]`, print every regular file in the
current directory.

### c18-08 — Append and verify

The exercise comes with `temp.txt` (a few numbered lines). Append
exactly this line, then print a message confirming success (check `$?`
after the append, don't just assume it worked):
```
11. Line 11 with no number.
```

### c18-09 — Arithmetic from user input

Prompt for two numbers, read them, and print, each on its own line:
```
Sum: <a+b>
Difference: <a-b>
Product: <a*b>
Quotient: <a/b>
Remainder: <a%b>
```
(integer arithmetic throughout).
