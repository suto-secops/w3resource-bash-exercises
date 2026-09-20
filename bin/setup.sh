#!/usr/bin/env bash
# Usage: bin/setup.sh <exercise-id>
#
# Creates (or resets) sandbox/<id>/ and seeds it with whatever starting
# files that exercise needs (if any). You then write your solution as
# sandbox/<id>/solution.sh.
set -uo pipefail

if [ ! -f /.exercise-container ]; then
    echo "This must be run INSIDE the container (docker compose exec workspace bash)." >&2
    exit 2
fi

id=${1:-}
if [ -z "$id" ]; then
    echo "Usage: bin/setup.sh <exercise-id>  (e.g. c01-01)" >&2
    exit 2
fi

repo_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)

cat_id=${id%%-*}

cat_dir=$(find "$repo_root/categories" -maxdepth 1 -mindepth 1 -type d -name "${cat_id}_*" | head -n1)
if [ -z "$cat_dir" ]; then
    echo "Can't find category '$cat_id'." >&2
    exit 2
fi

exdir="$repo_root/sandbox/$id"

if [ -e "$exdir" ]; then
    read -r -p "$exdir already exists. Reset it and lose what's inside? [y/N] " reply
    case "$reply" in
        [yY]*)
            # sudo sidesteps any permission/ownership state a previous
            # attempt left behind (e.g. a permissions exercise that chowned
            # things away from student), so a reset always works.
            sudo rm -rf -- "$exdir"
            ;;
        *)
            echo "Cancelled."
            exit 1
            ;;
    esac
fi

mkdir -p -- "$exdir"

fixtures="$cat_dir/fixtures.sh"
if [ -f "$fixtures" ]; then
    # shellcheck disable=SC1090
    source "$fixtures"
    fn="fixture_${id//-/_}"
    if declare -f "$fn" >/dev/null; then
        (cd "$exdir" && "$fn")
    fi
fi

echo "Ready: $exdir"
echo "Write your solution as: $exdir/solution.sh"
