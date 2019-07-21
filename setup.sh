#!/usr/bin/env bash

# get scripts
wget https://raw.githubusercontent.com/MikaelElkiaer/posh-git-sh/master/git-prompt.sh -O ~/git-prompt.sh
mkdir ~/bin \
	&& wget https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -O ~/bin/diff-so-fancy \
	&& chmod +x ~/bin/diff-so-fancy

# set up symbolic links
ln -sf "$(pwd)"/.gitconfig ~/.gitconfig
ln -sf "$(pwd)"/.inputrc ~/.inputrc
ln -sf "$(pwd)"/.vimrc ~/.vimrc
ln -sf "$(pwd)"/.bash_profile ~/.bash_profile
