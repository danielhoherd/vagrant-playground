#!/usr/bin/env bash
# http://emulationstation.org/gettingstarted.html#install_deb

sudo apt-get update
#sudo apt-get upgrade -y

sudo apt-get autoremove -y

# Install emulationstation, then its dependencies. Would be cool to have a way
# to do this in one step, eg: yum localinstall -y packagename
wget --no-verbose http://emulationstation.org/downloads/releases/emulationstation_amd64_latest.deb
sudo dpkg --install emulationstation_amd64_latest.deb
sudo apt-get -f install -y

sudo apt-get install -y \
  apt-file \
  silversearcher-ag \
  vim \
  wget
