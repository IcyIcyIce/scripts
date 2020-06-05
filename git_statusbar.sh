#!/bin/bash

# If not git repository, exit
[ ! "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ] && exit 0

# Colors
source "${SCRIPTS_DIR}/colors.sh"
result_color="$FG_GREEN"

git_branch="$(git branch |cut -d' ' -f2)"

# Number of modified files
git_modified="$(git status |grep 'modified:' |wc -l)"
[ "$git_modified" -gt 0 ] && result_color="$FG_RED"

result="${BOLD}${result_color}${git_branch}"
echo -e $result
