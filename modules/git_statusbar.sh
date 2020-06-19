#!/bin/bash

function git_status() {
  # If not git repository, exit
  [ ! "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ] && exit 0

  # Git top-level directory name
  git_dir="$(basename "$(git rev-parse --show-toplevel)")"

  git_branch="$(git branch |cut -d' ' -f2)"

  # Change color according to status
  unset append_text
  result_color="$FG_GREEN"
  git_response="$(git status)"
  git_ahead="$(echo "$git_response" |grep -c 'Your branch is ahead')"
  ## Untracked files
  [ "$git_ahead" -ne 0 ] && result_color="$FG_GREEN" && append_text+="${FG_LIGHTMAGENTA}!"
  git_committed="$(echo "$git_response" |grep -c 'Changes to be committed')"
  [ "$git_committed" -ne 0 ] && result_color="$FG_YELLOW"
  git_untracked="$(echo "$git_response" |grep -c Untracked)"
  [ "$git_untracked" -ne 0 ] && append_text+="${FG_LIGHTRED}*"
  git_modified="$(echo "$git_response" |grep -c 'Changes not staged')"
  [ "$git_modified" -ne 0 ] && result_color="$FG_RED"

  result="${BOLD}${result_color}${git_branch}@${git_dir} ${append_text} ${RESET}"
  echo -e "${result}"
}
