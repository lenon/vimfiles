#!/usr/bin/env bash
ln -s ~/vimfiles/vimrc ~/.vimrc
ln -s ~/vimfiles/gvimrc ~/.gvimrc
mkdir -p ~/.config/nvim
ln -s ~/vimfiles/vimrc ~/.config/nvim/init.vim
vim +PlugInstall +qall
