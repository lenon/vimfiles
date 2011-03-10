"The runtimepath contains a list of paths where vim looks for plugins, config files, etc
set runtimepath=~/.vim

"Turn off vi compatibility mode
set nocompatible

"Allow Vim to manage multiple buffers effectively
set hidden

"Turn on syntax highlighting
syntax on

"Show line numbers
set number

"Show commands on status line
set showcmd

"Number of spaces for tabs
set tabstop=2

"Number of spaces for indentation
set shiftwidth=2

"Convert tabs to spaces
set expandtab

"Turn on backup
set backup
set swapfile

"The directory where the swap/backup files are stored
set backupdir=~/.vim/tmp
set dir=~/.vim/tmp

"Change the terminal title
set title
set titlestring=%<%F%h%m%r%h%w

