#!/usr/bin/env bash
ln -s ~/vimfiles/vimrc ~/.vimrc
ln -s ~/vimfiles/gvimrc ~/.gvimrc
vim +PluginInstall +qall
