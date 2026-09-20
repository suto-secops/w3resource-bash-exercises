# w3resource bash exercises

A Docker-sandboxed, auto-graded replica of the exercise set at
[w3resource's Bash Scripting Exercises](https://www.w3resource.com/bash-script-exercises/index.php):
6 categories, 30 subcategories, 291 exercises in total. Problems are
adapted from the original wording just enough to make them checkable by
a script (fixed input instead of "ask the user," for instance) — same
command/concept each one is teaching, deterministic result.

## Why a container

Everything runs inside a disposable Docker container, not on your host.
That makes it safe to practice exercises that touch permissions,
processes, or the filesystem in ways you wouldn't want to risk on your
real machine — if something breaks, you rebuild the container in seconds.
It also runs as a normal, non-root user (`student`), so permission-related
exercises behave like a real machine instead of a VM where root ignores
every permission bit.

The whole repo is bind-mounted into the container, so your progress
(which exercises you've solved, your actual scripts) lives on your disk
and survives rebuilding the container.

## Usage

```bash
docker compose build      # once, or whenever the Dockerfile changes
docker compose up -d
docker compose exec workspace bash
```

Inside the container, one command drives the whole loop:

```bash
bin/ex next
```

This sets up the next exercise you haven't started, drops a ready-to-edit
`solution.sh` stub (already executable, shebang already there) into
`sandbox/<id>/`, and prints the exercise text right there in your
terminal — no hunting through `EXERCISES.md` by hand. Edit the file
(`nano sandbox/<id>/solution.sh`, or open it from your host editor — same
file, bind-mounted), then:

```bash
bin/ex check <id>
```

to grade it. Run `bin/ex next` again for the next one. Two more commands
round it out:

```bash
bin/ex show <id>     # reprint any exercise's text, any time
bin/ex list          # at-a-glance status of every exercise: . not started, ✗ failing, ✓ passing
```

`bin/ex` is a thin, friendlier wrapper — `bin/setup.sh <id>` and
`bin/check.sh <id>` underneath are the same two primitives it's built
from, still there if you want to call them directly.

To leave: `exit`. To stop the container (nothing is lost — your work is
on disk, in the bind-mounted volume): `docker compose down`.

## Structure

```
categories/
  c01_basic_commands/
    README.md
    EXERCISES.md          # the 10 exercises for this category
    fixtures.sh           # (if needed) starting files per exercise
    checks/
      c01-01.sh            # (if needed) one checker per exercise
  c02_.../
  ...
bin/
  ex                        # the friendly entry point: next / show / setup / check / list
  setup.sh                  # prepares sandbox/<id>/ (used by bin/ex, or directly)
  check.sh                  # runs solution.sh and grades it (used by bin/ex, or directly)
  lib/
    assert.sh                # helpers used by checks/*.sh
    paths.sh                 # exercise/category lookup shared by all of the above
sandbox/                   # your work (gitignored)
PROGRESS.md                # what's done, what's pending, exercise by exercise
```

## Exercise ids

Each exercise has an id `c<category>-<n>`, e.g. `c01-07` = category 1
(Understanding basic commands), exercise 7. That id shows up in three
places: the heading in `EXERCISES.md`, the checker filename
(`checks/c01-07.sh`), and the checkbox in `PROGRESS.md` — so you can
always jump between them by name.

## How grading works

Each exercise's checker runs your `sandbox/<id>/solution.sh` with fixed
input (stdin and/or arguments, whatever that exercise specifies) and
inspects what it actually did — stdout, stderr, exit code, and/or files
it should have created — rather than reading your source code. There's
usually more than one correct script; the checker only cares about
observable behavior.

A few things every checker enforces implicitly:

- `solution.sh` must exist and be executable (`chmod +x`) — the checker
  runs it as `./solution.sh`, it does not chmod it for you.
- It must start with a `#!/bin/bash` (or equivalent) shebang, since
  that's what makes it directly executable at all.

Some later exercises (job control, interactive debugging session
behavior, etc.) may end up `[manual]` — no checker, just a written
description of what you should observe — the same way Tema 1's
orientation block works in the sibling repo. None of category 1 needs
that; it'll be called out explicitly if/when it comes up.

## Tracking progress

Manual, in [`PROGRESS.md`](PROGRESS.md): one checkbox per exercise,
grouped by category. Tick them yourself as you go — `bin/check.sh` tells
you whether an exercise is solved, but doesn't touch that file.
