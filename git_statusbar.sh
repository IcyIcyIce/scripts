#!/bin/bash

# If not git repository, exit
[ ! "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ] && exit 0

# Colors
source "${SCRIPTS_DIR}/colors.sh"
result_color="$FG_GREEN"

git_branch="$(git branch |cut -d' ' -f2)"

# Number of modified files
#git_modified="$(git status |grep 'modified:' |wc -l)"
#[ "$git_modified" -gt 0 ] && result_color="$FG_RED"

# Change color according to status
## Untracked files
git_status="$(git status)"
git_ahead="$(echo $git_status |grep -c 'Your branch is ahead')"
[ "$git_ahead" -ne 0 ] && result_color="$FG_GREEN" && append_text+="${FG_LIGHTMAGENTA}!"
git_committed="$(echo $git_status |grep -c 'Changes to be committed')"
[ "$git_committed" -ne 0 ] && result_color="$FG_YELLOW"
git_untracked="$(echo $git_status |grep -c Untracked)"
[ "$git_untracked" -ne 0 ] && result_color="$FG_YELLOW" && append_text+="${FG_LIGHTRED}*"
git_modified="$(echo $git_status |grep -c 'Changes not staged')"
[ "$git_modified" -ne 0 ] && result_color="$FG_RED"

result="${BOLD}${result_color}${git_branch}"
echo -e "${result} ${append_text}"
