" get the current directory of this script (usually ~/vimfiles)
let $VIMHOME = fnamemodify(resolve(expand('<sfile>:p')), ':h')

set nocompatible " turn off Vi compatibility mode
filetype off " required by Vundle

" Vundle setup
set rtp+=$VIMHOME/bundle/Vundle.vim " include Vundle into the runtime path
call vundle#begin($VIMHOME . '/bundle') " initialize Vundle

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle

" My plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'nginx.vim'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'sjl/gundo.vim'

call vundle#end() " required by Vundle
filetype plugin indent on " required by Vundle

" include ~/vimfiles into the runtime path
" must be called after Vundle setup
set rtp+=$VIMHOME

" ervandew/supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" scrooloose/nerdtree
let g:NERDTreeMinimalUI = 1 " disables the 'Press ? for help' text
let g:NERDTreeShowHidden = 1 " display hidden files

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<leader><space>' " open using leader key + space bar
let g:ctrlp_working_path_mode = 0 " disable working directory detection
let g:ctrlp_by_filename = 1 " search by filename and not full path
let g:ctrlp_match_window = 'bottom,order:btt,min:5,max:15,results:15' " increase the max number of results
let g:ctrlp_clear_cache_on_exit = 0 " keep the cache after exit
let g:ctrlp_cache_dir = $VIMHOME . '/cache'
let g:ctrlp_key_loop = 1 " enable input of multi-byte characters

" bling/vim-airline
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#branch#enabled = 0 " disable git integration

let g:airline#extensions#tabline#enabled = 1 " enable tabline extension
let g:airline#extensions#tabline#show_tabs = 1 " always show tabs
let g:airline#extensions#tabline#show_tab_nr = 0 " do not display tab number
let g:airline#extensions#tabline#show_buffers = 0 " do not display buffers as tabs
let g:airline#extensions#tabline#show_close_button = 0 " do not show close button
let g:airline#extensions#tabline#show_tab_type = 0 " do not diplay tab type (tab or buffer)

" override mode mapping
let g:airline_mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'VL',
      \ '' : 'VB',
      \ }

" disable the last airline section
let g:airline_section_z = ''

" scrooloose/syntastic
let g:syntastic_error_symbol = 'E>'
let g:syntastic_warning_symbol = 'W>'
let g:syntastic_stl_format = '%E{E: %fe}%B{ }%W{W: %fw}'

" gruvbox
let g:gruvbox_termcolors=16

" VIM setup
set encoding=utf-8
set nowrap " disable automatic word wrapping
set modeline " respect modeline in files
set exrc " enable per-directory .vimrc files...
set secure " ...and disable unsafe commands in them
set backspace=eol,start,indent " allow backspacing over everything in insert mode
set hidden " allow Vim to manage multiple buffers effectively
set autoindent " self explanatory, huh?
set copyindent " copy the previous indentation on autoindenting
set list " show all characters
set listchars=tab:→→,trail:·,nbsp:_ " show tabs and trailing spaces
set t_Co=256 " the term has 256 colors
set completeopt=menuone,preview
" set ttyfast " improves redrawing
" set lazyredraw
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

" Backup, history and swap files
set backup " turn on backup
set writebackup
set swapfile " turn on swap file
set backupdir=$VIMHOME/tmp " the directory where the swap/backup files should be stored
set directory=$VIMHOME/tmp
set history=300 " number of commands saved in the history list
set undolevels=300 " number of undo levels

" Search
set hlsearch " highlight search
set ignorecase " ignore case when searching
set incsearch " show matches while typing
set smartcase " ignore case if search pattern is all lowercase

" Status and command line
set laststatus=2 " always show the status line
set noshowmode " do not show current mode on status line
set ruler " show the cursor position on status line
set showcmd " show commands on status line
set title " show the current filename on the window title
set wildmenu " enable autocomplete on command line
set wildmode=longest,list " complete longest common string and list alternatives

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

if version >= 704
  set regexpengine=1 " new regexp engine makes Vim slow with ruby syntax highlighting
endif

syntax on " turn on syntax highlighting
set background=dark
colorscheme gruvbox " the color scheme (srsly)

" autocmds

" Automatically quit vim if NERDTree is last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntax highlight and per lang settings

" Ruby
autocmd BufNewFile,BufRead Gemfile,Vagrantfile,Capfile,Guardfile,Rakefile,
  \*.god,*.rabl,*.jbuilder set filetype=ruby
autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2

autocmd BufNewFile,BufRead *.yml.sample set filetype=yaml
autocmd BufNewFile,BufRead *nginx/**/*.conf,*nginx.conf* set filetype=nginx
autocmd BufNewFile,BufRead *.json setlocal shiftwidth=2 softtabstop=2 tabstop=2

" Per-file settings
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType java setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType go setlocal shiftwidth=4 tabstop=4 noexpandtab

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
