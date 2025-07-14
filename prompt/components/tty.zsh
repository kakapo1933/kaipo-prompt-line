# TTY segment
current_tty() {
    local raw_tty=$(tty 2> /dev/null | sed 's/\(.*\)\/\(.*\)/\2/')
    echo "$raw_tty" | sed 's/\(.*\)s\(.*\)/\2/' 
}

render_tty_segment() {
    echo -n "${MAUVE}${PL_LEFT_ROUND}${BG_MAUVE}${CRUST}󰭆 ${BG_BASE} ${MAUVE}$(current_tty) ${BG_RESET}${CRUST}${PL_RIGHT_ROUND}${BLANK}"
}
