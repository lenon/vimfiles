#!/usr/bin/env bash
ln -s ~/vimfiles/vimrc ~/.vimrc
ln -s ~/vimfiles/gvimrc ~/.gvimrc
mkdir -p ~/.config/nvim
ln -s ~/.config/nvim/init.vim ~/vimfiles/vimrc
vim +PluginInstall +qall
