# Category 12 — Working with symbolic links

Adapted from [w3resource: Working with symbolic links](https://www.w3resource.com/bash-script-exercises/working-with-symbolic-links.php).

### c12-01 — Create a symlink to a file

The exercise comes with `input.txt`. Create a symbolic link named
`file_link` pointing to it.

### c12-02 — Check whether a symlink exists

Check whether `file_link` exists as a symbolic link in the current
directory, and print a message accordingly. (The checker creates and
removes it between runs.)

### c12-03 — Remove a symlink

The exercise comes with a symlink `file_link`. Remove it (its target
file should be left alone).

### c12-04 — Create a symlink to a directory

The exercise comes with a directory `workarea/`. Create a symbolic link
named `dir_link` pointing to it.

### c12-05 — Check whether a symlink points to a directory

Check `dir_link`: if it exists and points to a directory, print a
message saying so; if it exists but doesn't point to a directory, say
that instead; if it doesn't exist at all, say that. The checker tests
all three states.

### c12-06 — List symbolic links

Using a `for` loop and `[ -L ... ]`, print every symbolic link in the
current directory.

### c12-07 — Print a symlink's target

The exercise comes with a symlink `file_link`. Print a line of the form
`Target of 'file_link': <resolved absolute path>` using `readlink -f`.

### c12-08 — Symlink with an absolute path

The exercise comes with `input.txt`. Create a symbolic link named
`link_to_file` whose *stored target* is the absolute path to
`input.txt` (build it with `$(pwd)`, don't hardcode it).

### c12-09 — Symlink with a relative path

The exercise comes with `output.txt`. Create a symbolic link named
`link_to_file1` whose stored target is the plain relative name
`output.txt` (not an absolute path this time).

### c12-10 — Symlink to a system directory

Create a symbolic link named `link_to_bin1` pointing to `/bin`.
