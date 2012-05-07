set nocompatible " turn off Vi compatibility mode
filetype off " required (to be honest, I don't know why :P)

" Vundle setup
" ============

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
Bundle 'gmarik/vundle'

" CtrlP
" =====

Bundle 'kien/ctrlp.vim'

" VIM setup
" =========

set number " show line numbers
set showmode " show current mode on status line
set showcmd " show commands on status line
set nowrap " disable automatic word wrapping

set history=1500 " number of commands saved in the history list
set undolevels=1000 " number of undo levels

set backupdir=~/.vim/tmp " the directory where the swap/backup files should be stored
set dir=~/.vim/tmp

set backup " turn on backup
set swapfile

set title " show the current filename on the window title
set backspace=eol,start,indent " allow backspacing over everything in insert mode

set ruler " show the cursor position on status line

set hidden " allow Vim to manage multiple buffers effectively

set tabstop=2 " default tab size
set expandtab " convert tabs to spaces
set autoindent " self explanatory, huh? (like the most of commands hehe)

set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅ " show tabs and trailing spaces

set t_Co=256 " the term has 256 colors

syntax on " turn on syntax highlighting
colorscheme railscasts " the color scheme (srsly)

