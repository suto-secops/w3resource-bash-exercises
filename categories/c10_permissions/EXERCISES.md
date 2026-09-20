# Category 10 — Changing file permissions

Adapted from [w3resource: Changing file permissions](https://www.w3resource.com/bash-script-exercises/changing-file-permissions.php).
Each exercise gives you a specific starting permission (via the fixture)
so the resulting mode is unambiguous.

### c10-01 — Exact numeric mode

The exercise comes with `output.txt` (`644`). Set it to: read+write+execute
for the owner, read+write for the group, read-only for others (`764`).

### c10-02 — Remove write for group and others

The exercise comes with `input.txt` (`666`). Remove write permission for
group and others, symbolically (not by typing the resulting numeric
mode).

### c10-03 — Grant execute to everyone

The exercise comes with `test.sh` (`644`). Grant execute permission to
everyone.

### c10-04 — Directory: owner full, group read+execute, others nothing

The exercise comes with a directory `workarea`. Set its permissions so
the owner has read+write+execute, the group has read+execute, and others
have nothing.

### c10-05 — Strip group and others entirely

The exercise comes with a directory `parent_directory` (`755`). Remove
all permissions for group and others, symbolically, in one `chmod` call
(not by listing a numeric mode).

### c10-06 — Add read+write for everyone

The exercise comes with `output.txt` (`600`). Add read and write
permission for owner, group, and others, symbolically.

### c10-07 — Remove execute for owner and group only

The exercise comes with `my_script.sh` (`755`). Remove execute
permission from the owner and the group, but leave others untouched, in
a single `chmod` call with comma-separated clauses.

### c10-08 — Directory: owner+group full-ish, no others

The exercise comes with a directory `workarea`. Set: read+write+execute
for owner, read+execute for group, nothing for others.

### c10-09 — Remove write for group only

The exercise comes with `input.txt` (`664`). Remove write permission for
the group only (leave the owner and others as they are).

### c10-10 — Build up permissions in two steps

The exercise comes with `my_script.sh` (`000`, nothing for anyone). In
two separate `chmod` calls: first give the owner read+write+execute,
then give others read-only.
