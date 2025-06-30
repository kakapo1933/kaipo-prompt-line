# Main prompt configuration
# Load dependencies
source ~/.config/zsh/prompt/colors.zsh
source ~/.config/zsh/prompt/symbols.zsh
source ~/.config/zsh/prompt/utils.zsh
source ~/.config/zsh/prompt/weather.zsh

# Enable prompt substitution
setopt PROMPT_SUBST

# Custom prompt with rounded corners
PROMPT='%B${PINK}${PL_LEFT_ROUND}${BG_PINK} ${BG_BASE}${PINK} 󰚩 %n ${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${BLANK}${MAUVE}${PL_LEFT_ROUND}${BG_MAUVE} ${BG_BASE} 󰭆 $(current_tty) ${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${BLANK}${LAVENDER}${PEACH}${PL_LEFT_ROUND}${BG_PEACH} ${BG_BASE}${PEACH}   %1~ ${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${BLANK}${GREEN}${PL_LEFT_ROUND}${BG_GREEN} ${BG_BASE}${GREEN}  $(git_branch) ${RESET}${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${BLANK}${YELLOW}${PL_LEFT_ROUND}${BG_YELLOW} ${BG_BASE} ${YELLOW}$(weather)$(temperature) ${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${RESET}${BLANK}${RED}${PL_LEFT_ROUND}${BG_RED} ${BG_BASE}${RED} 󱑁 %D{%H:%M} ${RESET}${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${RESET}%b
${PINK} ╰─▶ ${LAVENDER}'

# Right prompt
RPS1="${LAVENDER}󱨚 ${MAUVE}󱙺 ${PEACH}󱚢 ${YELLOW}󱚠 ${RED}󱚞 ${GREEN}󱜚 ${PINK}󱚦 ${RESET}"
