# Category 7 — Creating, copying, moving, and deleting files and directories

Adapted from [w3resource: Creating, copying, moving, and deleting files and directories](https://www.w3resource.com/bash-script-exercises/creating-copying-moving-and-deleting-files-and-directories.php).
These checkers inspect the resulting filesystem state after your script
runs, not what it printed.

### c07-01 — Create a directory

Create a directory named `workarea` in the current directory.

### c07-02 — Copy a file

The exercise comes with `error.log`. Copy it to a new file named
`old_error.log`.

### c07-03 — Move a directory

The exercise comes with a directory `workarea/` (containing a file).
Move the whole directory to a new location named `new_workarea`.

### c07-04 — Delete a file

The exercise comes with `file1.txt`. Delete it.

### c07-05 — Create multiple directories

Create three directories, `dir_1`, `dir_2`, and `dir_3`, in the current
directory, with a single `mkdir` call.

### c07-06 — Copy multiple files by pattern

The exercise comes with `source_directory/`, containing `a.txt`,
`b.txt`, and `c.log`. Create `destination_dir/` and copy only the
`.txt` files into it (not `c.log`).

### c07-07 — Move multiple directories

The exercise comes with `dir_1/`, `dir_2/`, `dir_3/` (each with a file
inside) and an existing empty `new_dir/`. Move all three directories
into `new_dir/` with a single `mv` call.

### c07-08 — Delete multiple files by pattern

The exercise comes with `error_1.log`, `error_2.txt`, and `keep.txt`.
Delete everything whose name starts with `error`, without touching
`keep.txt`.

### c07-09 — Directory hierarchy

Create this structure, starting from the current directory:
```
parent_directory/
├── workarea/
│   ├── subworkarea1/
│   └── subworkarea2/
└── workarea2/
```

### c07-10 — Copy a directory's contents, preserving structure

The exercise comes with `source_dir/` (containing a file and a
subdirectory with a file of its own) and an empty `destination_dir/`.
Copy the *contents* of `source_dir` into `destination_dir` — afterward,
`destination_dir` should mirror `source_dir`'s structure exactly (not be
nested one level deeper inside a `source_dir` subfolder).
