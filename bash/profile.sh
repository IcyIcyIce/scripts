source "${SCRIPTS_DIR}/bash/colors.sh"

export PS1="${FG_BLUE}${BOLD} [ ${FG_LIGHTBLUE}\u${FG_YELLOW}@${FG_MAGENTA}\h ${FG_BLUE}] ${FG_BLUE}\w ${RESET}\$(git_status)\n ${FG_LIGHTRED}\$${RESET} "
