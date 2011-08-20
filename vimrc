" Turn off Vi compatibility mode
set nocompatible

" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Activate pathogen
call pathogen#runtime_append_all_bundles()

" Allow Vim to manage multiple buffers effectively
set hidden

" Show line numbers
set number

" Show current mode on status line
set showmode

" Show commands on status line
set showcmd

set nowrap

" Indentation
set tabstop=2    " Number of spaces for tabs
set shiftwidth=2 " Number of spaces for indentation
set expandtab    " Convert tabs to spaces
set autoindent   " Self explanatory, huh?
set copyindent   " Copy the previous indentation on autoindenting

" Turn on backup
set backup
set swapfile

" The directory where the swap/backup files are stored
set backupdir=~/.vim/tmp
set dir=~/.vim/tmp

" Number of commands saved in the history list
set history=1500

" Number of undo levels
set undolevels=1000

" Show opened file in window title
set title

" Allow backspacing over everything in insert mode
set backspace=eol,start,indent

" Show the cursor position
set ruler

" Show tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Highlight the current line
set cursorline

" Tell the term has 256 colors
set t_Co=256

" Turn on syntax highlighting
syntax on

" The color scheme (srsly)
colorscheme railscasts

" Nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
nnoremap <f2> :NERDTreeToggle<cr> "Toggle Nerdtree

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
" ( https://github.com/scrooloose/nerdtree/issues/21#issuecomment-907483 )
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Self explanatory, huh?
function! AutoOpenNerdtree()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call AutoOpenNerdtree()

autocmd BufRead,BufNewFile Gemfile set filetype=Gemfile

" Convenient way to move between tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

