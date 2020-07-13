source "${SCRIPTS_DIR}/bash/colors.sh"

export PS1="${PS1_FG_BLUE}${PS1_BOLD} [ ${PS1_FG_LIGHTBLUE}\u${PS1_FG_YELLOW}@${PS1_FG_MAGENTA}\h ${PS1_FG_BLUE}] ${PS1_FG_BLUE}\w ${PS1_RESET}\$(git_status)\n ${PS1_FG_LIGHTRED}\$${PS1_RESET} "
