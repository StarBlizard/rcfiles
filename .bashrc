export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# export PS1="\u@\h: \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
# default PS1:
export PS1="\[\033[01;34m\]\w\[\033[00m\] \[\e[91m\]\$(parse_git_branch)\[\e[00m\] $ "

declare -r PROMPT_COMMAND='echo -en "\033]0; ${PWD##*/} \a"'

gvim() {
  START "" "\gVim" "${PWD}/$1"
}
