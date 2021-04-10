#!/bin/bash

# git
sudo apt -y install git
git config --global user.name "Cherish"
git config --global user.email "851153978@qq.com"

echo '[alias]
	br = branch
	co = checkout
	st = status
	ci = commit' >> ~/.gitconfig

echo '[color]
	ui = auto' >> ~/.gitconfig

# editer
yes | sudo apt-get install vim emacs wget

# browser
if [ -f /tmp/google-chrome-stable_current_amd64.deb ];
then
    echo 'google-chrome-stable_current_amd64.deb has been download'
else
    wget -P /tmp/ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i /tmp/google-chrome*
    yes | sudo apt-get -f install 
fi

# ctrl + R
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc

# tools
sudo -y apt install tree meld spyder ack-grep silversearcher-ag htop fd-find unity-tweak-tool axel zip curl unzip
alias top="sudo htop"

# video download
pip3 install you-get

cd ~
