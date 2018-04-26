#!/usr/bin/env bash
# http://emulationstation.org/gettingstarted.html#install_deb
# No clue why these guys don't provide their own Vagrantfile as an example...
set -e
set -x

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y \
  apt-file \
  build-essential \
  cmake \
  git \
  libasound2-dev \
  libboost-date-time-dev \
  libboost-filesystem-dev \
  libboost-locale-dev \
  libboost-system-dev \
  libcurl4-openssl-dev \
  libeigen3-dev \
  libfreeimage-dev \
  libfreetype6-dev \
  libgl1-mesa-dev \
  libsdl2-dev \
  silversearcher-ag

git clone https://github.com/Aloshi/EmulationStation

cd EmulationStation
git checkout unstable
cmake .
make
sudo make install
