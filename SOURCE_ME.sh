#!/bin/bash

# Vim
alias vim="vim -u \${HOME}/.scripts/dotfiles/.vimrc"

# Directory where my scripts reside
export SCRIPTS_DIR="${HOME}/.scripts"
source "${SCRIPTS_DIR}/modules.sh"
alias sc="cd \${SCRIPTS_DIR}"

# Shellcheck
alias shellcheck="shellcheck -s bash -e SC1090,SC2148"
# List of disabled checks:
# SC2148: Tips depend on target shell and yours is unknown. Add a shebang or a 'shell' directive
# SC1090: Sourcing non-absolute paths

# Appearance
case "${SHELL##*/}" in
  "bash")
    source "${SCRIPTS_DIR}/bash/profile.sh"
    ;;
  "zsh")
    source "${SCRIPTS_DIR}/zsh/profile.sh"
    ;;
esac

# Common aliases
alias ll="ls -la"
