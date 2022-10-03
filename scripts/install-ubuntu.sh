sudo apt upgrade
sudo apt-get update

sudo apt -y install git
sudo apt -y install jq
sudo apt -y install tmux
sudo apt -y install neofetch
sudo apt -y install libssl-dev automake autoconf libncurses5-dev

#postgres
sudo apt -y install postgresql
sudo -u postgres createuser -s $(whoami);

#zsh
sudo apt -y install zsh
chsh -s $(which zsh)

#docker
curl -fsSL https://get.docker.com -o ~/get-docker.sh
sh ~/get-docker.sh
rm ~/get-docker.sh

#asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
. ~/.asdf/asdf.sh
asdf plugin add erlang
asdf plugin add elixir
asdf install erlang 25.1
asdf install elixir 1.14.0-otp-25
asdf install neovim latest

#neovim 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 18
nvm alias default 18
