#!/bin/bash

# Directory where my scripts reside
export SCRIPTS_DIR="${HOME}/.scripts"
source "${SCRIPTS_DIR}/modules.sh"

# Common aliases
alias ll="ls -la"

# Shellcheck
alias shellcheck="shellcheck -s bash"

# Weather
alias weather="\${SCRIPTS_DIR}/weather.sh"

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
