source "${__SCRIPTS_DIR}/bash/colors.sh"

export PS1="${__PS1_FG_BLUE}${__PS1_BOLD} [ ${__PS1_FG_LIGHTBLUE}\u${__PS1_FG_YELLOW}@${__PS1_FG_MAGENTA}\h ${__PS1_FG_BLUE}] ${__PS1_FG_BLUE}\w ${__PS1_RESET}\$(__git_status)\n ${__PS1_FG_LIGHTRED}\$${__PS1_RESET} "
