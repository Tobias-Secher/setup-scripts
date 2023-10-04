#!/bin/sh

install_rbenv() {
    echo "Installing ruby version manager (rbenv)"
    brew install rbenv
    echo "Which global version of ruby do you wish to use"
    read rbenvVersion;
    rbenv install $rbenvVersion;
    echo "Setting rbenv path"

    echo "Add there two lines at the top of your .zsh file. Press enter once you are done"
    echo 'export PATH="$HOME/.rbenv/shims:$PATH"'
    echo 'eval "$(rbenv init -)"'
    read
    source ~/.zshrc
    rbenv global $rbenvVersion;
    echo "Current ruby version is: "
    ruby -version
}

install_cocoapodPatch() {
    echo "Installing cocapods patch";
    gem install cocoapods-patch
}

install_rbenv;
install_cocoapodPatch;