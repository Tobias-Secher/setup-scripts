#!/bin/sh

log_func() {
  echo
  echo "#########"
  echo $1
  echo "#########"
  echo
}
log_func "Deleting nvm home dir"
rm -rf ~/.nvm

log_func "Removing nvm home from .zshrc"
sed -i '/NVM_DIR/d' ~/.zshrc

log_func "Uninstalling nvm"
brew uninstall nvm

log_func "Removing home brew from .zshrc"
sed -i '/linuxbrew/d' ~/.zshrc

log_func "Uninstalling home brew build essential"
sudo apt-get purge build-essential

log_func "Uninstalling gcc"
brew uninstall gcc

log_func "Uninstalling Home brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

log_func "Uninstalling oh my zsh"
uninstall_oh_my_zsh

log_func "Uninstalling zsh"
sudo apt purge zsh

log_func "Uninstalling curl"
sudo apt purge curl

log_func "Uninstalling git-all"
sudo apt purge git-all 