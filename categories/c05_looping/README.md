# c05 — Looping

`for`, `while`, C-style `for ((...))`, arithmetic conditions `(( ))`,
`break`.

Source: [w3resource: Looping](https://www.w3resource.com/bash-script-exercises/looping.php)
(category 1 of 6: *Basic Bash Syntax and Usage*).

c05-08 involves `$RANDOM`, so its checker verifies the *property* (the
reported number really is divisible by 3) rather than a fixed expected
value. `run_solution` has a 10s timeout, so an accidentally-infinite loop
in your script fails the check instead of hanging it.

See [`EXERCISES.md`](EXERCISES.md) — ids `c05-01` through `c05-10`.
