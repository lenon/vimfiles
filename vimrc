set nocompatible " turn off Vi compatibility mode
filetype off " required (to be honest, I don't know why :P)

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
Bundle 'gmarik/vundle'

" CtrlP
Bundle 'kien/ctrlp.vim'

" SuperTab continued
Bundle 'ervandew/supertab'

" Gist.vim
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
let g:gist_detect_filetype = 1 " autodetect gist filetype
let g:gist_open_browser_after_post = 1 " open browser after create a gist
let g:gist_post_private = 1 " create private gist by default

" fugitive.vim
Bundle 'tpope/vim-fugitive'

" Powerline
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'skwp'

" jslint.vim
Bundle 'hallettj/jslint.vim'

" VIM setup
set laststatus=2 " always show the status line
set encoding=utf-8
set number " show line numbers
set showmode " show current mode on status line
set showcmd " show commands on status line
set nowrap " disable automatic word wrapping
set history=300 " number of commands saved in the history list
set undolevels=300 " number of undo levels
set backupdir=~/.vim/tmp " the directory where the swap/backup files should be stored
set dir=~/.vim/tmp
set backup " turn on backup
set swapfile
set title " show the current filename on the window title
set backspace=eol,start,indent " allow backspacing over everything in insert mode
set ruler " show the cursor position on status line
set hidden " allow Vim to manage multiple buffers effectively
set tabstop=2 " default tab size
set shiftwidth=2
set expandtab " convert tabs to spaces
set autoindent " self explanatory, huh? (like the most of commands hehe)
set list " show all characters
set listchars=tab:>~,trail:~,nbsp:~,extends:> " show tabs and trailing spaces
set t_Co=256 " the term has 256 colors
set hlsearch " highlight search
set incsearch " show matches while typing
set ttyfast " improves redrawing
set lazyredraw
set cursorline " highlight current line
set wildmode=list:longest " a list of completions will be shown when press tab on the command line

" Jellybeans colorscheme
Bundle 'jellybeans.vim'

syntax on " turn on syntax highlighting
colorscheme jellybeans " the color scheme (srsly)

" Relative line numbers in normal mode
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" Syntax highlight
autocmd BufNewFile,BufRead Gemfile set filetype=ruby

autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=4 tabstop=4

fun! DisableJSLint()
  let b:jslint_disabled = 1
endfun

autocmd BufNewFile,BufRead *_spec.js silent call DisableJSLint() " disable jslint for javascript specs

