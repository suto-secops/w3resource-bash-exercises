# Category 8 — Listing files and directories

Adapted from [w3resource: Listing files and directories](https://www.w3resource.com/bash-script-exercises/listing-files-and-directories.php).

### c08-01 — List everything, including hidden

Print a full listing (`ls -al`) of the current directory.

### c08-02 — Only regular files

Using a `for` loop over `*`, print only the entries that are regular
files (not directories).

### c08-03 — Only directories

Using a `for` loop over `*/`, print only the entries that are
directories.

### c08-04 — List a directory given as an argument

Your script takes one argument, a directory path:
- No argument (or more than one): print a line starting with `Usage:`
  and exit non-zero.
- The argument exists but isn't a directory: print
  `<argument> is not a directory.` and exit non-zero.
- The argument is a directory: print `Files and directories in
  <argument>:` followed by `ls -al` on it.

The checker runs your script all three ways.

### c08-05 — Only hidden regular files

Using a `for` loop over `.*`, print only the hidden entries that are
regular files (not directories, so a hidden directory shouldn't appear).

### c08-06 — Recently modified files

Print every regular file under the current directory (recursively)
that was modified within the last 24 hours.

### c08-07 — Files larger than 1MB

Print a detailed (`ls -lh`-style) listing of every regular file under
the current directory larger than 1MB.

### c08-08 — Empty files

Print a detailed listing of every empty regular file directly in the
current directory (not recursively).

### c08-09 — Files with a specific extension

Using a `for` loop (not `find`), print every file in the current
directory ending in `.txt`.
