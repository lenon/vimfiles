# Vimfiles

These are my Vim files. I created them over the time to suit my needs, so don't
expect lots and lots of useless stuff here. :smile:

## Requirements

Vim 7.4. Tested on Mac OS X with both MacVim and command-line Vim, but it should
work on other environments without problems.

## Included plugins

* [Vundle.vim] - The plug-in manager for Vim.
* [ctrlp-funky] - Navigate and jump to function definitions.
* [ctrlp.vim] - Full path file finder (or Textmate's ⌘T for Vim).
* [gruvbox] - Retro groove color scheme for Vim.
* [gundo.vim] - Plugin to visualize your Vim undo tree.
* [nerdtree] - File explorer in the form of a tree.
* [nginx.vim] - Highlights Nginx configuration files.
* [supertab] - Auto-complete with \<tab\>.
* [syntastic] - Syntax checking.
* [vim-airline] - Awesome status line.
* [vim-commentary] - Comment code.
* [vim-fugitive] - Git integration.

## Installation

Clone this repo into your home directory:

    git clone git://github.com/lenon/vimfiles.git ~/vimfiles

Go to the cloned repo and then update submodules:

    cd ~/vimfiles
    git submodule update --init

Link `vimrc` for command-line Vim and `gvimrc` for MacVim:

    ln -s ~/vimfiles/vimrc ~/.vimrc
    ln -s ~/vimfiles/gvimrc ~/.gvimrc

Install all plugins using Vundle.vim (it is normal to see some warnings here):

    vim +PluginInstall +qall

Start `vim` and enjoy! :beer:

## ctrlp.vim

CtrlP is activated by `<Leader><space>`. Once it is open, you can use the
following key combinations:

| Map      | Description                                |
| -------- | ------------------------------------------ |
| `F5`     | Refresh file list                          |
| `CTRL+F` | Select next mode                           |
| `CTRL+B` | Select previous mode                       |
| `CTRL+D` | Toggle filename only mode                  |
| `CTRL+R` | Toggle regexp mode                         |
| `CTRL+P` | Select previous string from search history |
| `CTRL+N` | Select next string from search history     |
| `CTRL+T` | Open selected file in a new tab            |
| `CTRL+X` | Open selected file in a horizontal split   |
| `CTRL+V` | Open selected file in a vertical split     |
| `CTRL+Z` | Mark/unmark multiple files                 |
| `CTRL+O` | Open marked files                          |

You can run `:help ctrlp-mappings` for more information about CtrlP key maps.

[Vundle.vim]: https://github.com/gmarik/Vundle.vim
[ctrlp-funky]: https://github.com/tacahiroy/ctrlp-funky
[ctrlp.vim]: https://github.com/kien/ctrlp.vim
[gruvbox]: https://github.com/morhetz/gruvbox
[gundo.vim]: https://github.com/sjl/gundo.vim
[nerdtree]: https://github.com/scrooloose/nerdtree
[nginx.vim]: http://www.vim.org/scripts/script.php?script_id=1886
[supertab]: https://github.com/ervandew/supertab
[syntastic]: https://github.com/scrooloose/syntastic
[vim-airline]: https://github.com/bling/vim-airline
[vim-commentary]: https://github.com/tpope/vim-commentary
[vim-fugitive]: https://github.com/tpope/vim-fugitive
