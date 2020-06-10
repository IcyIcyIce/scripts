#!/bin/bash

# Directory where my scripts reside
export SCRIPTS_DIR="${HOME}/.scripts"

# Colors

# Common aliases
alias ll="ls -la"

# Fuzzy finder
alias se="\${SCRIPTS_DIR}/scripts_edit.sh"

# Shellcheck
alias shellcheck="shellcheck -s bash"

# Brew
alias brew_clean="\${SCRIPTS_DIR}/brew_clean.sh"

# Weather
alias weather="\${SCRIPTS_DIR}/weather.sh"

# Git
alias git_status="\${SCRIPTS_DIR}/git_statusbar.sh"

# Appearance
case "${SHELL##*/}" in
  "bash")
    source "${SCRIPTS_DIR}/colors.sh"
    export PS1="${FG_BLUE}${BOLD} [ ${FG_LIGHTBLUE}\u${FG_YELLOW}@${FG_MAGENTA}\h ${FG_BLUE}] ${FG_BLUE}\w \$(git_status)\n ${FG_LIGHTRED}\$${RESET} "
    ;;
  "zsh")
    source "${SCRIPTS_DIR}/zsh/zsh.sh"
    ;;
esac
