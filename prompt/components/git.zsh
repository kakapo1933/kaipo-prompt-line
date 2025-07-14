# Git segment
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

render_git_segment() {
    echo -n "${GREEN}${PL_LEFT_ROUND}${BG_GREEN}${CRUST} ${BG_BASE}${GREEN} $(git_branch) ${RESET}${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${BLANK}"
}
