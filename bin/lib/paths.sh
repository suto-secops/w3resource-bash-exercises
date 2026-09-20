#!/usr/bin/env bash
# Shared path-resolution helpers for bin/setup.sh, bin/check.sh, and
# bin/ex. Callers must set $repo_root before sourcing this.

# Prints the category directory for a given exercise id (e.g. c01-07 ->
# .../categories/c01_basic_commands). Prints nothing if not found.
category_dir_for() {
    local id=$1
    local cat_id=${id%%-*}
    find "$repo_root/categories" -maxdepth 1 -mindepth 1 -type d -name "${cat_id}_*" 2>/dev/null | head -n1
}

# Prints every known exercise id, one per line, sorted -- derived from
# whichever exercises actually have a checker (categories/*/checks/*.sh),
# so this list updates itself as more categories get written.
all_exercise_ids() {
    find "$repo_root/categories" -mindepth 3 -maxdepth 3 -path '*/checks/*.sh' -print 2>/dev/null \
        | sed -E 's#.*/([^/]+)\.sh$#\1#' \
        | sort -t- -k1,1 -k2,2n
}

# Prints the markdown block for exercise $id from its category's
# EXERCISES.md: from the "### <id> ..." heading up to (not including) the
# next "### " heading, or end of file.
exercise_text_for() {
    local id=$1
    local cat_dir
    cat_dir=$(category_dir_for "$id")
    [ -z "$cat_dir" ] && return 1
    local ex_file="$cat_dir/EXERCISES.md"
    [ -f "$ex_file" ] || return 1
    awk -v prefix="### $id " '
        BEGIN { printing = 0 }
        /^### / {
            if (printing) exit
            if (index($0, prefix) == 1) printing = 1
        }
        printing { print }
    ' "$ex_file"
}
