#!/bin/sh

log_func() {
  echo
  echo "#########"
  echo $1
  echo "#########"
  echo
}

log_func "Updating apt"
sudo apt-get update 

log_func "Installing git"
sudo apt install git-all
# apt uninstall git-all

log_func "Installing curl"
sudo apt  install curl

log_func "Installing zsh"
sudo apt install zsh

log_func "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# To uninstall: uninstall_oh_my_zsh

log_func "Making Oh My Zsh default terminal"
chsh -s $(which zsh)

log_func "Installing Home brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

log_func "Adding home brew to zsh"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

log_func "Installing home brew essentials"
sudo apt-get install build-essential


log_func "Installing gcc"
brew install gcc

log_func "Creating nvm dir"
mkdir -p ~/.nvm

log_func "Installing nvm"
brew install nvm 

log_func "Adding nvm home"
echo 'export NVM_DIR="$HOME/.nvm"
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc  

log_func "Creating workspace folder in Documents"
mkdir -p ~/Documents/workspace

log_func "Installing node lts using nvm and setting it to default"
nvm install lts --default
