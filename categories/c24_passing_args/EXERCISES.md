# Category 24 — Passing arguments to functions

Adapted from [w3resource: Passing arguments to functions](https://www.w3resource.com/bash-script-exercises/passing-agruments-to-functions.php).
Same spirit as categories 22-23 again (the source repeats itself) —
different example values this time. No fixtures or stdin/args needed.

### c24-01 — Greeting function

Define `greet`. Call it with `Pitter`.

### c24-02 — Four arithmetic functions

Define `add`, `subtract`, `multiply`, `divide` (via `bc`, two decimal
places). Call: `add 25 30`, `subtract 12 14`, `multiply 4 7`,
`divide 12 5`.

### c24-03 — Factorial function

Define `factorial`. Call it with `6`, then with `11`.

### c24-04 — Maximum and minimum functions

Define `maximum` and `minimum`. Call `maximum 200 150`, then
`minimum 12 11`.

### c24-05 — Power function

Define `power`. Call it with `2 3`, then with `10 2`.

### c24-06 — Twin prime check

Define `is_prime` (returns via `return 0`/`return 1`, doesn't print
anything) and `is_twin_prime` (two numbers; prints `<a> and <b> are twin
primes` if both are prime and exactly 2 apart, otherwise `<a> and <b>
are not twin primes`). Call it with `3 5`, then `11 13`, then `9 11`.

### c24-07 — String manipulation functions (quoted results)

Define `string_length`, `substring_extraction` (string, start, length),
`string_concatenation` — same idea as before, but this time wrap the
computed value in single quotes in the message: `is: '<value>'`. Call:
- `string_length "Hello, world!"`
- `substring_extraction "Hello, world!" 4 3`
- `string_concatenation "Bash, " "Script!"`

### c24-08 — Directory operation functions

Define `create_directory`, `list_files`, `directory_exists` (same as
category 23's directory functions — the source duplicates this one
almost exactly). Call in order: create `workarea_dir`, check it exists,
list its contents.
