# c01 — Understanding basic commands

`echo`, `cat`, `ls`, command substitution, output redirection, `tput`.

Source: [w3resource: Understanding basic commands](https://www.w3resource.com/bash-script-exercises/understanding-basic-commands.php)
(part of category 1 of 6: *Basic Bash Syntax and Usage*).

## How each exercise works

1. `bin/setup.sh <id>` — creates `sandbox/<id>/` and seeds it with any
   starting files that exercise needs.
2. Write your solution as `sandbox/<id>/solution.sh`, with a `#!/bin/bash`
   shebang, and make it executable: `chmod +x sandbox/<id>/solution.sh`.
3. `bin/check.sh <id>` (from the repo root) — runs your script (with
   whatever fixed stdin/args that exercise specifies) and checks its
   behavior.

All of this happens **inside the container**
(`docker compose exec workspace bash`).

## Exercises

See [`EXERCISES.md`](EXERCISES.md) — ids `c01-01` through `c01-10`.

Track your progress in [`/PROGRESS.md`](../../PROGRESS.md).
