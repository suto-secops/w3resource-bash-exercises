# Category 17 — Sorting and filtering text

Adapted from [w3resource: Sorting and filtering text](https://www.w3resource.com/bash-script-exercises/sorting-and-filterting-text.php).
Note on c17-03: the original site's own sample solution for "sort by
line length" is `sort -n -k2`, which actually sorts by the *second
whitespace-separated field*, not by length at all — a real bug in the
source. This version asks for an approach that's actually correct.

### c17-01 — Sort alphabetically

The exercise comes with `temp.txt`. Sort its lines alphabetically into a
new file `sorted_data.txt` (leave `temp.txt` untouched).

### c17-02 — Sort in reverse alphabetical order

Same file. Sort its lines in reverse alphabetical order into a new file
`reverse_sorted_data.txt`.

### c17-03 — Sort by line length

Same file. Sort its lines by length (shortest first) into a new file
`length_sorted_data.txt`. (Hint: `awk` can prefix each line with its
length for `sort` to key on, then you strip the prefix back off —
`cut` or another `awk`/`sed` pass both work.)

### c17-04 — Sort numerically

The exercise comes with `temp.txt`, whose lines start with numbers that
aren't zero-padded (so alphabetical order would put `10` before `2`).
Sort them *numerically* into a new file `sorted_numbers.txt`.

### c17-05 — Filter lines containing a word

The exercise comes with `temp.txt`. Save the lines containing `last`
into a new file `filtered_data.txt`.

### c17-06 — Filter out lines containing a word

Same file. Save the lines *not* containing `Bash` into
`filtered_data.txt`.

### c17-07 — Filter lines by length

Same file. Save the lines longer than 100 characters into
`filtered_data.txt`.

### c17-08 — Filter lines by prefix

The exercise comes with `temp.txt`, a mix of lines starting with
`prefix_` and one that doesn't. Save only the ones starting with
`prefix_` into `filtered_data.txt`.

### c17-09 — Remove duplicate lines

The exercise comes with `temp.txt`, containing some repeated lines. Save
the de-duplicated, sorted lines into a new file `unique_data.txt`.
