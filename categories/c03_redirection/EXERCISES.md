# Category 3 — Input/output redirection

Adapted from [w3resource: Input/output redirection](https://www.w3resource.com/bash-script-exercises/input-output-redirection.php).

### c03-01 — Redirect stdout to a file

Write `solution.sh` that runs `ls` but redirects its output into a file
named `test.txt` — nothing about the listing should print to the
terminal.

### c03-02 — Redirect a file into stdin

The exercise comes with `notas.txt`. Using input redirection (`<`, not
passing the filename as an argument), have `cat` read it and print its
contents.

### c03-03 — Both directions at once

The exercise comes with `entrada.txt`. In one `cat` invocation, use input
redirection to read from `entrada.txt` *and* output redirection to write
into a new file `salida.txt` — no filenames as arguments, only `<`/`>`.

### c03-04 — Redirect stderr

Run a command that's guaranteed to fail (for example, `ls` on a file that
doesn't exist) and redirect *only* its standard error into a file named
`error.log`. Nothing should reach the terminal's stderr.

### c03-05 — Append without overwriting

The exercise comes with `log.txt`, already containing one line. Append
the output of the `date` command to it — the original line must still be
there afterward, with the new line added after it, not instead of it.

### c03-06 — Discard output entirely

Run `echo "this should vanish"`, redirected so that *nothing* reaches the
terminal — not even to `/dev/null`'s absence of output being visible some
other way. (Yes, that's just `> /dev/null`.)

### c03-07 — Pipe into a filter

The exercise comes with four files: `a.txt`, `b.log`, `c.txt`, `d.md`.
Pipe the output of `ls` into `grep` to print only the ones ending in
`.txt`.

### c03-08 — Read a number from a file

The exercise comes with `nums.txt`, containing a single number. Read it
into a variable using input redirection (`read ... < nums.txt`, not
`cat`), double it, and print:
```
The result of doubling the number from nums.txt is: <doubled value>
```

### c03-09 — `tee`: terminal and file at once

The exercise comes with `datos.txt`. Pipe `cat datos.txt` into `tee`, so
its content lands both on the terminal *and* in a new file `copia.txt`.

### c03-10 — Heredoc

Using a heredoc (`<<`), write exactly these three lines into a file named
`document.txt`:
```
This is line 1 of the document.
This is line 2 of the document.
This is line 3 of the document.
```
