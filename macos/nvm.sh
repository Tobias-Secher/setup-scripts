#!/bin/sh

install_nvm() {
    echo "Installing nvm"
    brew install nvm;
    echo "Setting home path for nvm"
    echo "\n" >> ~/.zshrc
    echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
    echo '[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm' >> ~/.zshrc
    echo '[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion' >> ~/.zshrc
    echo "\n" >> ~/.zshrc
    source ~/.zshrc
    echo "Verify nvm is installed"
    nvm -v

    echo "Setting default node version"
    nvm install --lts
    echo "Current node version is: "
    node --version
}

install_nvm;