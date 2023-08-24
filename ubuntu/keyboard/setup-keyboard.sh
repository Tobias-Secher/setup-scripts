#!/bin/sh

log_func() {
  echo
  echo "#########"
  echo $1
  echo "#########"
  echo
}

# log_func "Installing g810-led"
# sudo apt install g810-led

log_func "Pulling and installing git repo"
cd ../../../
git clone https://github.com/MatMoul/g810-led.git
cd g810-led
make bin
sudo make install