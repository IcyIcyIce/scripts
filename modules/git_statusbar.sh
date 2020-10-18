#!/bin/bash

function __git_status() {
  # If not git repository, exit
  [ ! "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ] && exit 0

  # Git top-level directory name
  git_dir="$(basename "$(git rev-parse --show-toplevel)")"

  git_branch="$(git branch | grep '*' |cut -d' ' -f2)"

  # Change color according to status
  unset append_text
  result_color="${__FG_GREEN}"
  git_response="$(git status)"
  git_ahead="$(echo "$git_response" |grep -c 'Your branch is ahead')"
  ## Untracked files
  [ "$git_ahead" -ne 0 ] && result_color="$FG_GREEN" && append_text+="${__FG_LIGHTMAGENTA}!"
  git_committed="$(echo "$git_response" |grep -c 'Changes to be committed')"
  [ "$git_committed" -ne 0 ] && result_color="${__FG_YELLOW}"
  git_untracked="$(echo "$git_response" |grep -c Untracked)"
  [ "$git_untracked" -ne 0 ] && append_text+="${__FG_LIGHTRED}*"
  git_modified="$(echo "$git_response" |grep -c 'Changes not staged')"
  [ "$git_modified" -ne 0 ] && result_color="${__FG_RED}"

  result="${__BOLD}${result_color}${git_branch}@${git_dir} ${append_text} ${__RESET}"
  echo -e "${result}"
}
