#!/usr/bin/env bash
mkdir -p ~/.config/nvim

ln -s "$PWD/vimrc" ~/.vimrc
ln -s "$PWD/gvimrc" ~/.gvimrc
ln -s "$PWD/vimrc" ~/.config/nvim/init.vim

vim +PlugInstall +qall
