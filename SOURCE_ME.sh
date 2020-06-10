#!/bin/bash

# Directory where my scripts reside
export SCRIPTS_DIR="${HOME}/.scripts"

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

# Vim
alias vim="vim -u \${HOME}/.scripts/dotfiles/.vimrc"

# Appearance
case "${SHELL##*/}" in
  "bash")
    source "${SCRIPTS_DIR}/bash/profile.sh"
    ;;
  "zsh")
    source "${SCRIPTS_DIR}/zsh/profile.sh"
    ;;
esac
