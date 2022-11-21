export PROMPT='%m:%1~ '

#asdf package manager
. $HOME/.asdf/asdf.sh

#elixir 
export PATH=$PATH:~/source/elixir/bin

alias ism="iex -S mix"
alias mr="mix run"
export ERL_AFLAGS="-kernel shell_history enabled"

#docker
alias dc="docker compose"
alias dps="docker ps"
alias da="docker attach"

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
