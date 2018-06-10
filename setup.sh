#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Vundle has been setup, run PluginInstall in vim"

ln -s $(pwd)/.config/* ~/.config/
ln -s .* ~/

