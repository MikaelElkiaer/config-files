# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

source /home/m-elkiaer/bin/git-prompt.sh
PROMPT_COMMAND='__posh_git_ps1 "\[\033[1;33m\]\w\e[0m" "\\n\$ ";'$PROMPT_COMMAND
source /home/m-elkiaer/bin/git-completion.bash

alias lsa="ls --almost-all"
export VAGRANT_DEFAULT_PROVIDER=virtualbox
alias start="xdg-open"

alias ghci-cabal="ghci -no-user-package-db -package-db .cabal-sandbox/x86_64-linux-ghc-7.8.4-packages.conf.d/"

alias mongod-start="systemctl start mongod"
alias mongod-stop="systemctl stop mongod"

alias wa="~/Git/tungsten/tungsten.sh"
alias w10="virtualbox ~/VirtualBox\ VMs/Windows\ 10\ \(64-bit\)/Windows\ 10\ \(64-bit\).vbox"

export ANDROID_HOME=/home/m-elkiaer/bin/android-sdk-linux
export PATH=$PATH:/home/m-elkiaer/bin/android-sdk-linux/tools

alias box="less -isR"

