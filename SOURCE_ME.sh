#!/bin/bash

# Directory where my scripts reside
export SCRIPTS_DIR="${HOME}/.scripts"

# Colors
source "${SCRIPTS_DIR}/colors.sh"

# Common aliases
alias ll="ls -la"

# Fuzzy finder
alias se="\${SCRIPTS_DIR}/scripts_edit.sh \${SCRIPTS_DIR}"
alias fe="\${SCRIPTS_DIR}/scripts_edit.sh"

# Shellcheck
alias shellcheck="shellcheck -s bash"

# Brew
alias brew_clean="\${SCRIPTS_DIR}/brew_clean.sh"

# Weather
alias weather="\${SCRIPTS_DIR}/weather.sh"

# Git
alias git_status="\${SCRIPTS_DIR}/git_statusbar.sh"

# PS1
export PS1="${FG_BLUE}${BOLD} [ ${FG_LIGHTBLUE}\u${FG_YELLOW}@${FG_MAGENTA}\h ${FG_BLUE}] ${FG_BLUE}\w \$(git_status)\n ${FG_LIGHTRED}\$${RESET} "
