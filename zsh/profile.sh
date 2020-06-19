source "${SCRIPTS_DIR}/zsh/colors.sh"

_current_dir="${BOLD}${FG_BLUE}%3~${RESET}"

# returns [ user @ host ]
function _user_host() {
    echo "${FG_BLUE}[ ${BOLD}${FG_LIGHTBLUE}%n${FG_YELLOW}@${FG_MAGENTA}%m ${RESET}${FG_BLUE}]${RESET}"
}

function precmd() {
  print -P " $(_user_host) ${_current_dir} $(git_status)"
}
# the main prompt
export PROMPT=" ${FG_LIGHTRED}${BOLD}$ ${RESET}"
