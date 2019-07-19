#!/usr/bin/env bash

# get scripts
wget https://raw.githubusercontent.com/MikaelElkiaer/posh-git-sh/master/git-prompt.sh -O ~/git-prompt.sh

# set up symbolic links
ln -sf "$(pwd)"/.gitconfig ~/.gitconfig
ln -sf "$(pwd)"/.inputrc ~/.inputrc
ln -sf "$(pwd)"/.vimrc ~/.vimrc
ln -sf "$(pwd)"/.bashrc_extras ~/.bashrc_extras && echo source ~/.bashrc_extras >> ~/.bashrc