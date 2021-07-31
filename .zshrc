eval "$(starship init zsh)"

alias l="ls -la"
alias vim="nvim"
alias rmf="rm -rf"

. ~/z.sh

export DISPLAY=172.30.240.1:0

. /home/hhendrikk/.environment


#NVM CONFIG
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
