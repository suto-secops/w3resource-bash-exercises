# Category 14 — Searching for patterns using grep

Adapted from [w3resource: Searching for patterns using grep](https://www.w3resource.com/bash-script-exercises/searching-for-patterns-using-grep.php).
All of these are pure `grep` invocations against a fixed fixture file —
checkers re-run the real `grep` and compare live, so there's nothing to
memorize about exact expected wording.

### c14-01 — Basic search

The exercise comes with `document.txt`. Print lines containing `Bash`.

### c14-02 — Search across multiple files

The exercise comes with `file1.txt`, `file2.txt`, `file3.txt`. Print
lines containing `shell` across all three (in that order as arguments) —
note that with multiple files, `grep` prefixes each match with its
filename automatically.

### c14-03 — Case-insensitive search

The exercise comes with `document.txt`. Print lines containing `TYPES`,
ignoring case.

### c14-04 — Recursive search in a directory

The exercise comes with `search_dir/`, containing nested files. Print
lines containing `Bash` in any file under it, recursively, with `grep
-r`.

### c14-05 — Search with line numbers

The exercise comes with `document.txt`. Print lines containing `Bash`,
each prefixed with its line number.

### c14-06 — Inverted search

Same file. Print lines that do *not* contain `Bash`.

### c14-07 — Lines starting with a pattern

Same file. Print lines that start with `Bash`.

### c14-08 — Lines ending with a pattern

Same file. Print lines that end with `extensions.`.

### c14-09 — Multiple patterns (OR)

Same file. Print lines containing `command` *or* `shell`, using two
`-e` patterns in one `grep` call.

### c14-10 — Count matching lines

Same file. Print just the number of lines containing `command`.

### c14-11 — Words of an exact length

Same file. Print lines containing a whole word of exactly 5 characters,
using `\b` and `\w` (word-boundary/word-character classes).

### c14-12 — Words starting with a letter

Same file. Print lines containing a whole word starting with `P` or `p`.

### c14-13 — Words containing a substring

Same file. Print lines containing a whole word that has `ll` somewhere
in it.

### c14-14 — Words in a length range

Same file. Print lines containing a whole word of 10 to 15 characters.

### c14-15 — Extended regex pattern

The exercise comes with `temp.txt`. Using `grep -E`, print lines
containing a whole "word" made of exactly 3 letters followed by exactly
2 digits (e.g. `abc12`).
