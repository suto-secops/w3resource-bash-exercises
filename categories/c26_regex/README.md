# c26 — Regular expressions

`[[ =~ ]]` with `BASH_REMATCH`, `grep -P` lookaheads, extraction loops
over a block of text.

Source: [w3resource: Regular expressions](https://www.w3resource.com/bash-script-exercises/regular-expressions.php)
(category 6 of 6: *Advanced Techniques* — this subcategory has 5
exercises, not 10).

c26-03/04 pin down the exact regex and exact text so the result —
including the extraction loop's real quirks with adjacent matches —
is fully reproducible; the checker runs an identical reference
implementation and diffs against it rather than a hand-typed expected
value.

See [`EXERCISES.md`](EXERCISES.md) — ids `c26-01` through `c26-05`.
