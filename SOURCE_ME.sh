#!/bin/bash

# Directory where my scripts reside
export SCRIPTS_DIR="${HOME}/.scripts"

# Common aliases
alias ll="ls -la"

# Fuzzy finder
alias se="${SCRIPTS_DIR}/scripts_edit.sh ${SCRIPTS_DIR}"
alias fe="${SCRIPTS_DIR}/scripts_edit.sh"

# Shellcheck
alias shellcheck="shellcheck -s bash"

# Brew
alias brew_clean="${SCRIPTS_DIR}/brew_clean.sh"

# Weather
alias weather="${SCRIPTS_DIR}/weather.sh"
