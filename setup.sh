#!/usr/bin/env bash

# get scripts
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/git-prompt.sh

# set up symbolic links
ln -sf ./.gitconfig ~/.gitconfig
ln -sf ./.vimrc ~/.vimrc
ln -sf ./.bash_extras ~/.bash_extras
