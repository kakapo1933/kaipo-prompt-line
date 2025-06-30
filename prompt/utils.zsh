# Teletypewriter
current_tty() {
  local raw_tty=$(tty 2> /dev/null | sed 's/\(.*\)\/\(.*\)/\2/')
  echo "$raw_tty" | sed 's/\(.*\)s\(.*\)/\2/' 
}

# Git branch function
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}