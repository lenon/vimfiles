set nocompatible " turn off Vi compatibility mode
filetype off " required by Vundle

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
Bundle 'gmarik/vundle'

" My bundles
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/powerline'
Bundle 'chriskempson/base16-vim'
Bundle 'nginx.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'


set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

let g:SuperTabDefaultCompletionType = "context"

let g:NERDSpaceDelims = 1 " append an extra space after comment delimiter on NERD Commenter


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
set noswapfile
set title " show the current filename on the window title
set backspace=eol,start,indent " allow backspacing over everything in insert mode
set ruler " show the cursor position on status line
set hidden " allow Vim to manage multiple buffers effectively
set tabstop=2 " default tab size
set shiftwidth=2
set expandtab " convert tabs to spaces
set autoindent " self explanatory, huh? (like the most of commands hehe)
set copyindent " copy the previous indentation on autoindenting
set list " show all characters
set listchars=tab:→\ ,trail:· " show tabs and trailing spaces
set t_Co=256 " the term has 256 colors
set hlsearch " highlight search
set incsearch " show matches while typing
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase
set ttyfast " improves redrawing
set lazyredraw
set cursorline " highlight current line
set wildmode=list:longest " a list of completions will be shown when press tab on the command line
set showmatch " show matching parenthesis
set noesckeys " <esc> is recognized immediately
set novisualbell " disable visual bell
set noerrorbells " disable error bells
set autoread " automatically reload file on change
set scrolloff=5 " minimum number of screen lines above and below the cursor

syntax on " turn on syntax highlighting
set background=dark
colorscheme base16-monokai " the color scheme (srsly)

" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" Automatically quit vim if NERDTree is last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntax highlight
autocmd BufNewFile,BufRead Gemfile,Vagrantfile,Capfile,Guardfile,Rakefile,*.god,*unicorn.conf* set filetype=ruby
autocmd BufNewFile,BufRead *.yml.sample set filetype=yaml
autocmd BufNewFile,BufRead *nginx.conf* set filetype=nginx
autocmd BufNewFile,BufRead *unicorn.conf* set filetype=ruby

" Per-file settings
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=4 tabstop=4

" Disable arrow keys (omg, dafuq i'm doing)
noremap <right> <nop>
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>

inoremap <right> <nop>
inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Switch highlighting back off using <Leader>/
nnoremap <silent> <leader>/ :set invhlsearch<CR>

