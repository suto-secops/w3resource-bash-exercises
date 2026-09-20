# Category 9 — Searching for files

Adapted from [w3resource: Searching for files](https://www.w3resource.com/bash-script-exercises/seaching-for-files.php).

### c09-01 — Does `output.txt` exist?

Check whether `output.txt` exists in the current directory. Print `File
'output.txt' found in the current directory.` or `File 'output.txt' not
found in the current directory.` accordingly. (The checker creates and
removes it between runs.)

### c09-02 — Search for a file named by an argument

Your script takes one argument, a filename. Print `File '<name>' found
in the current directory.` or `File '<name>' not found in the current
directory.` accordingly.

### c09-03 — Recently modified files

The exercise comes with `recent.txt` (just touched) and `old.txt`
(10 days old). Print every regular file in the current directory
modified within the last 3 days.

### c09-04 — Files larger than 1KB

The exercise comes with `big.txt` (over 1KB) and `small.txt` (a few
bytes). Print every regular file larger than 1024 bytes.

### c09-05 — Empty files

The exercise comes with `empty.txt` and `nonempty.txt`. Print every
regular file that's empty.

### c09-06 — Files with a specific extension (including hidden ones)

The exercise comes with `input.txt`, `input1.txt`, `note.log`, and a
*hidden* `.hidden.txt`. Enable `dotglob` so your glob also matches
hidden files, then print every file ending in `.txt` (matching by
suffix after the last dot, not just filtering with `grep`).

### c09-07 — Files containing a string

Your script takes one argument, a search string. The exercise comes
with `a.txt` (contains "hello world"), `b.txt` (contains "goodbye"),
and `c.txt` (contains "say hello again"). Print the names of files
containing the search string.

### c09-08 — Files owned by a user

Your script takes one argument, a username. Print the regular files
directly in the current directory owned by that user (`find ... -user
...`). The checker also tries a username that doesn't exist on the
system at all — that should behave like `find` naturally does (an error
to stderr), not something you need to handle specially yourself.

### c09-09 — Find symbolic links

The exercise comes with `target.txt` and a symlink `my_link` pointing
to it. Print the symbolic links directly in the current directory.

### c09-10 — Find executable files

The exercise comes with `exec.sh` (executable) and `plain.txt` (not).
Print the regular files directly in the current directory that have
execute permission.
