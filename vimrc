"Turn off Vi compatibility mode
set nocompatible

"Necessary on some Linux distros for pathogen to properly load bundles
filetype off

"Activate pathogen
call pathogen#runtime_append_all_bundles()

"Allow Vim to manage multiple buffers effectively
set hidden

"Show line numbers
set number

"Show current mode on status line
set showmode

"Show commands on status line
set showcmd

"Indentation
set tabstop=2    "Number of spaces for tabs
set shiftwidth=2 "Number of spaces for indentation
set expandtab    "Convert tabs to spaces
set autoindent   "Self explanatory, huh?

"Turn on backup
set backup
set swapfile

"The directory where the swap/backup files are stored
set backupdir=~/.vim/tmp
set dir=~/.vim/tmp

"Show opened file in window title
set title

"Allow backspacing over everything in insert mode
set backspace=eol,start,indent

"Show the cursor position
set ruler

"Number of commands saved in the history list
set history=1500

"Show tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"Highlight the current column
"set cursorcolumn

"Highlight the current line
set cursorline

"Tell the term has 256 colors
set t_Co=256

"Turn on syntax highlighting
syntax on

colorscheme railscasts

