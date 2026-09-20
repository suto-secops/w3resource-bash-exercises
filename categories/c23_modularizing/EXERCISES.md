# Category 23 — Modularizing scripts

Adapted from [w3resource: Modularizing scripts](https://www.w3resource.com/bash-script-exercises/modularizing-scripts.php).
Same spirit as category 22 (functions), pushed toward organizing several
related functions together. No fixtures or stdin/args needed — call
each function with the exact values listed.

### c23-01 — Greeting function

Define `greet` (one argument, a name) that prints `Hello, <name>!
Welcome!`. Call it with `Kalevi`.

### c23-02 — Four arithmetic functions

Define `add`, `subtract`, `multiply`, `divide` (each takes two
numbers, `divide` via `bc` with two decimal places). Call each once
with `20 5`.

### c23-03 — Factorial function

Define `factorial`. Call it with `4`, then with `10`.

### c23-04 — Maximum and minimum functions

Define both `maximum` and `minimum` (two numbers each). Call `maximum`
with `101 201`, then `minimum` with `12 17`.

### c23-05 — Power function

Define `power` (base, exponent). Call it with `3 4`, then with `10 3`.

### c23-06 — Prime check function

Define `is_prime` that prints `<n> is prime` or `<n> is not prime`.
Call it with `19`, then with `22`.

### c23-07 — File operation functions

Define `create_file`, `delete_file`, `file_exists` (each takes a
filename). In order: create `doc_file.txt`, check it exists, delete it,
check again. Each step prints its own message (`File '<name>'
created.`, `exists.`, `deleted.`, `does not exist.`).

### c23-08 — String manipulation functions

Define `string_length`, `substring_extraction` (string, start, length),
and `string_concatenation` (two strings), using bash's own
`${#str}`/`${str:start:length}` — not external tools. Call:
- `string_length "Hello, world!"`
- `substring_extraction "Hello, world!" 6 4`
- `string_concatenation "Bash, " "Scripting!"`

### c23-09 — Directory operation functions

Define `create_directory`, `list_files`, `directory_exists` (each takes
a directory name). In order: create `workarea_dir`, check it exists,
list its contents.

### c23-10 — Temperature conversion functions

Define `celsius_to_fahrenheit` and `fahrenheit_to_celsius` (via `bc`,
two decimal places), printing `<value>°C is equal to <value>°F` (and
the reverse). Call `celsius_to_fahrenheit 20`, then
`fahrenheit_to_celsius 68`.
