" get vim's home directory (usually '~/vimfiles' or '~/.vim')
" this allows vimfiles to be placed in a path other than the default
let $VIMHOME = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" put vim's home path into the runtimepath list
" this is required to make ftdetect and ftplugin files to be loaded
set runtimepath+=$VIMHOME

" turn off Vi compatibility mode
if !has('nvim')
  set nocompatible
end

" fish is not POSIX compatible, so there are some issues with fish and
" vim < 7.4.276
" the solution is to use sh if vim was invoked by a fish shell
if v:version < 704 || v:version == 704 && !has('patch276')
  if &shell =~# 'fish$'
    set shell=/bin/sh
  endif
end

" plugins setup
call plug#begin("$VIMHOME/plugged")
Plug 'aliva/vim-fish'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
Plug 'nginx.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'tpope/vim-commentary'
call plug#end()

" turn filetype detection, indent scripts and filetype plugins on
" this makes ftdetect and ftplugin scripts to be properly loaded
filetype plugin indent on

" ervandew/supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" scrooloose/nerdtree
let g:NERDTreeAutoDeleteBuffer = 1 " always remove a buffer when a file is being deleted or renamed
let g:NERDTreeMinimalUI = 1 " disables the 'Press ? for help' text
let g:NERDTreeShowHidden = 1 " display hidden files

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<leader><space>' " open using leader key + space bar
let g:ctrlp_working_path_mode = 0 " disable working directory detection
let g:ctrlp_by_filename = 1 " search by filename and not full path
let g:ctrlp_match_window = 'max:15,results:50' " increase the max number of results
let g:ctrlp_clear_cache_on_exit = 0 " keep the cache after exit
let g:ctrlp_cache_dir = $VIMHOME . '/tmp/cache'
let g:ctrlp_key_loop = 1 " enable input of multi-byte characters

" scrooloose/syntastic
let g:syntastic_error_symbol = 'E>'
let g:syntastic_warning_symbol = 'W>'
let g:syntastic_stl_format = '%E{E: %fe}%B{ }%W{W: %fw}'

" gruvbox
let g:gruvbox_invert_selection=0

" VIM setup
let mapleader = '\' " use backslash as leader key
set encoding=utf-8
set nowrap " disable automatic word wrapping
set backspace=eol,start,indent " allow backspacing over everything in insert mode
set hidden " allow Vim to manage multiple buffers effectively
set autoindent " self explanatory, huh?
set copyindent " copy the previous indentation on autoindenting
set list " show all characters
set listchars=tab:→→,trail:·,nbsp:_ " show tabs and trailing spaces
set completeopt=menuone,preview
" set ttyfast " improves redrawing
set lazyredraw " screen will not be redrawn while executing macros
" set cursorline " highlight current line
set showmatch " show matching parenthesis
set noesckeys " <esc> is recognized immediately
set novisualbell " disable visual bell
set noerrorbells " disable error bells
set autoread " automatically reload file on change
set scrolloff=5 " minimum number of screen lines above and below the cursor
set sidescrolloff=20 " minimum number of screen columns to keep to the left and to the right of the cursor
set number " show line numbers
set colorcolumn=80 " show a column on screen that is useful to align text
set textwidth=0 " disable auto line break
set clipboard=unnamed " use system clipboard
set fillchars+=vert:\ " set an empty space as window separator
set nrformats-=octal " ignore octal numbers when increment with ctrl-a/x
set title " show the current filename on the window title

" modeline setup
set exrc " enable per-directory .vimrc, .nvimrc and .exrc files
set modeline " respect commands in files
set modelines=5 " allow 5 lines of commands
set secure " disable unsafe commands

" Backup, history and swap files
set backup " turn on backup
set writebackup " make a backup before overwriting a file
set swapfile " turn on swap
set backupdir=$VIMHOME/tmp/backup// " directory names for the backup files
" double slashes "//" at the end of directory means that file names will be
" built using the complete path
set directory=$VIMHOME/tmp/swap// " directory names for the swap file
set history=300 " number of commands saved in the history list
set undolevels=300 " number of undo levels

" Search
set hlsearch " highlight search
set ignorecase " ignore case when searching
set incsearch " show matches while typing
set smartcase " ignore case if search pattern is all lowercase

" Tabs
set expandtab " convert tabs to spaces
set tabstop=2 " default tab size
set softtabstop=2
set shiftwidth=2 " number of spaces to use for indentation

" Folds
set nofoldenable " open all folds by default
set foldlevel=20
set foldlevelstart=20
set foldmethod=indent " folding based on indentation

" statusline
set laststatus=2 " always show the status line
set statusline=
set statusline+=\ %{statusline#currentmode()}\  " current mode
set statusline+=%f " file name
set statusline+=%< " truncate line from here if it is too long
set statusline+=%{statusline#modified()} " modified flag
set statusline+=%{statusline#readonly()} " read only flag
set statusline+=%h " help buffer flag
set statusline+=%=
set statusline+=%{&fileformat}\  " file format
set statusline+=%{statusline#filetype()}\  " file type
set statusline+=%{&encoding}\  " file encoding
set statusline+=%l/%L\ %c\  " line and column number

" command line
set noshowmode " do not show current mode on command line
set noruler " do not show the cursor position on command line
set showcmd " show commands on status line
set wildmenu " enable autocomplete on command line
set wildmode=longest:full,full " complete longest common string and list alternatives

" override statusline colors
augroup StatusLineColors
  autocmd!
  autocmd ColorScheme * hi! link StatusLine GruvboxFg1
  autocmd ColorScheme * hi! link StatusLineNC GruvboxBg4
augroup END

" syntax highlight and colorscheme
syntax on
set background=dark
colorscheme gruvbox " the color scheme (srsly)

" autocmds

" Automatically quit vim if NERDTree is last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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

" Toggle NERDTree
map <leader><return> :NERDTreeToggle<CR>

" Toggle CtrlPFunky
nnoremap <Leader>f :CtrlPFunky<CR>

" Toggle gundo.vim
nnoremap <leader>u :GundoToggle<CR>
