# Category 11 — Archiving and compressing files

Adapted from [w3resource: Archiving and compressing files](https://www.w3resource.com/bash-script-exercises/archiving-and-compressing-files.php).
Checkers extract your archives into a scratch directory and compare
*contents*, not raw bytes — two archives of identical content aren't
necessarily byte-for-byte identical.

### c11-01 — Create a tar archive

The exercise comes with a directory `workarea/` (containing a file).
Create a tar archive named `workarea.tar` of it.

### c11-02 — Extract a tar archive

The exercise comes with `workarea.tar` and an empty `extracted_files/`.
Extract the archive's contents into `extracted_files/`.

### c11-03 — Create a gzip-compressed tar archive

The exercise comes with `workarea/`. Create a gzip-compressed archive
named `workarea.tar.gz` of it.

### c11-04 — Extract a gzip-compressed tar archive

The exercise comes with `workarea.tar.gz` and an empty
`extracted_files/`. Extract it into `extracted_files/`.

### c11-05 — Create a zip archive

The exercise comes with `workarea/`. Create a zip archive named
`workarea.zip` of it (recursively).

### c11-06 — Extract a zip archive

The exercise comes with `workarea.zip` and an empty `new_dir/`. Extract
it into `new_dir/`.

### c11-07 — Archive excluding a pattern

The exercise comes with `source_directory/`, containing `keep.bin` and
`skip.txt`. Create a tar archive `source_directory.tar` of it that
excludes `.txt` files.

### c11-08 — Compress multiple named files together

The exercise comes with `file1.txt` and `file2.txt`. Compress both
together into a single gzip-compressed tar archive named
`compressed_files.tar.gz`.

### c11-09 — Extract only specific files from an archive

The exercise comes with `compressed_files.tar.gz` (containing
`file1.txt`, `file2.txt`, *and* `file3.txt`) and an empty
`extracted_files/`. Extract only `file1.txt` and `file2.txt` — not
`file3.txt` — into `extracted_files/`.

Careful with argument order: `-C extracted_files` has to come *before*
the member names (`tar -xzf archive.tar.gz -C extracted_files file1.txt
file2.txt`), not after — with GNU tar, a `-C` placed after the file list
doesn't apply to it.

### c11-10 — Password-protected zip archive

The exercise comes with `workarea/`. Prompt for a password (`read -s
-p`), then create a password-protected zip archive named `archive.zip`
of `workarea/` using that password (`zip -r --password "$password" ...`
or `-P "$password"`). The checker supplies a fixed password via stdin,
then verifies the archive can't be extracted without a password but can
with the correct one.
