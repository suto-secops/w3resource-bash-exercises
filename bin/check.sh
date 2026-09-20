#!/usr/bin/env bash
# Usage: bin/check.sh <exercise-id>
# Example: bin/check.sh c01-01
#
# Runs sandbox/<id>/solution.sh (with whatever stdin/args that exercise's
# checker provides) and inspects its behavior -- stdout, stderr, exit
# code, and/or files it should have created.
set -uo pipefail

if [ ! -f /.exercise-container ]; then
    echo "This must be run INSIDE the container (docker compose exec workspace bash)." >&2
    exit 2
fi

id=${1:-}
if [ -z "$id" ]; then
    echo "Usage: bin/check.sh <exercise-id>  (e.g. c01-01)" >&2
    exit 2
fi

repo_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
# shellcheck disable=SC1091
source "$repo_root/bin/lib/assert.sh"

cat_id=${id%%-*}

cat_dir=$(find "$repo_root/categories" -maxdepth 1 -mindepth 1 -type d -name "${cat_id}_*" | head -n1)
if [ -z "$cat_dir" ]; then
    echo "Can't find category '$cat_id'." >&2
    exit 2
fi

checker="$cat_dir/checks/${id}.sh"
if [ ! -f "$checker" ]; then
    echo "No checker for '$id' yet." >&2
    exit 2
fi

exdir="$repo_root/sandbox/$id"
if [ ! -d "$exdir" ]; then
    echo "$exdir doesn't exist -- run: bin/setup.sh $id" >&2
    exit 2
fi

echo "Checking $id ..."
cd "$exdir"
# shellcheck disable=SC1090
source "$checker"
report
