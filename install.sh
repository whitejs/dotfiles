#!/bin/bash
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.config/nvim/init.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

# fancy git prompt
git clone https://github.com/magicmonty/bash-git-prompt.git $HOME/.bash-git-prompt --depth=1
echo "GIT_PROMPT_ONLY_IN_REPO=1" >> $HOME/.bashrc
echo "source ~/.bash-git-prompt/gitprompt.sh" >> $HOME/.bashrc

