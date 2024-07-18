#!/bin/bash

set -eux

sudo apt update

# 1password
CURRENT_PATH=$(pwd)
WORK_PATH="/tmp/1password"
mkdir -p $WORK_PATH && cd $WORK_PATH
curl -fsSL https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb -o ./1password.deb
sudo apt install -y ./1password.deb
cd $CURRENT_PATH && rm -rf $WORK_PATH

# docker
CURRENT_PATH=$(pwd)
WORK_PATH="/tmp/docker"
mkdir -p $WORK_PATH && cd $WORK_PATH
curl -fsSL https://get.docker.com -o ./get-docker.sh
sudo sh ./get-docker.sh
cd $CURRENT_PATH && rm -rf $WORK_PATH

# fcitx, mozc
sudo apt install -y fcitx5-mozc
sudo apt remove -y ibus ibus-gtk ibus-gtk3 ibus-gtk4

# google chrome
CURRENT_PATH=$(pwd)
WORK_PATH="/tmp/chrome"
mkdir -p $WORK_PATH && cd $WORK_PATH
curl -fsSL https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o ./chrome.deb
sudo apt install -y ./chrome.deb
cd $CURRENT_PATH && rm -rf $WORK_PATH

# l2tp
sudo apt install -y network-manager-l2tp network-manager-l2tp-gnome

# ricty
CURRENT_PATH=$(pwd)
WORK_PATH="./ricty"
cd $WORK_PATH
sudo apt install -y fontforge
sh ./ricty_generator.sh Inconsolata-{Regular,Bold}.ttf migu-1m-{regular,bold}.ttf
mkdir -p ~/.fonts/ && mv ./Ricty-* ~/.fonts/
rm -f ./RictyDiscord-*
cd $CURRENT_PATH

# vim
sudo apt install -y vim

# vscode
CURRENT_PATH=$(pwd)
WORK_PATH="/tmp/vscode"
mkdir -p $WORK_PATH && cd $WORK_PATH
curl -fsSL https://go.microsoft.com/fwlink/?LinkID=760868 -o ./vscode.deb
sudo apt install -y ./vscode.deb
cd $CURRENT_PATH && rm -rf $WORK_PATH

sudo apt autoremove -y
