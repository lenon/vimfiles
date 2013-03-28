set nocompatible " turn off Vi compatibility mode
filetype off " required (to be honest, I don't know why :P)

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
Bundle 'gmarik/vundle'

" My bundles
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/powerline'
Bundle 'hallettj/jslint.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'nginx.vim'
Bundle 'scrooloose/nerdcommenter'

let g:gist_detect_filetype         = 1 " autodetect gist filetype
let g:gist_open_browser_after_post = 1 " open browser after create a gist
let g:gist_post_private            = 1 " create private gist by default

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

let g:SuperTabDefaultCompletionType = "context"

" VIM setup
set laststatus=2 " always show the status line
set encoding=utf-8
set noshowmode " do not show current mode on status line
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

syntax on " turn on syntax highlighting
set background=dark
colorscheme base16-tomorrow " the color scheme (srsly)

" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" Relative line numbers in normal mode
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" Syntax highlight
autocmd BufNewFile,BufRead Gemfile,Vagrantfile,Capfile,Guardfile,Rakefile set filetype=ruby
autocmd BufNewFile,BufRead *.yml.sample set filetype=yaml
autocmd BufNewFile,BufRead *nginx.conf* set filetype=nginx
autocmd BufNewFile,BufRead *unicorn.conf* set filetype=ruby

" Per-file settings
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=4 tabstop=4

fun! DisableJSLint()
  let b:jslint_disabled = 1
endfun

autocmd BufNewFile,BufRead *_spec.js silent call DisableJSLint() " disable jslint for javascript specs

" Disable arrow keys (omg, dafuq i'm doing)
noremap <right> <nop>
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>

inoremap <right> <nop>
inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

