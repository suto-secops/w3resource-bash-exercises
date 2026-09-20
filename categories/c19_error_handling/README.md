# c19 — Handling errors and exceptions

Existence/readability checks, `bc` for decimal division, retry loops
with regex validation, argument-count checks, `command -v`, permission
error handling, input validation, `$?` checks, and negated command
execution (`if ! cmd`).

Source: [w3resource: Handling errors and exceptions](https://www.w3resource.com/bash-script-exercises/handling-errors-and-exceptions.php)
(category 4 of 6: *Shell Script Debugging and Error Handling*).

c19-06 chmods `temp.txt` to `000` to genuinely test a permission-denied
read (this container runs as a non-root user, so that's a real
permission error, not a no-op).

See [`EXERCISES.md`](EXERCISES.md) — ids `c19-01` through `c19-10`.
