# Vimfiles

These are my Vim files. I created them over the time to suit my needs, so don't
expect lots and lots of useless stuff here. :smile:

## Requirements

Vim 7.4. Tested on Mac OS X with both MacVim and command-line Vim, but it should
work on other environments without problems.

## Included plugins

 * [badwolf][1] - Badwolf colorscheme.
 * [commentary.vim][2] - Comment code.
 * [ctrlp.vim][3] - Full path file finder (or Textmate's ⌘T for Vim).
 * [fugitive.vim][4] - Git integration.
 * [NERD Tree][5] - File explorer in the form of a tree.
 * [nginx.vim][6] - Highlights Nginx configuration files.
 * [Supertab][7] - Auto-complete with \<tab\>.
 * [Syntastic][8] - Syntax checking.
 * [vim-airline][9] - Awesome status line.
 * [Vundle.vim][10] - The plug-in manager for Vim.

[1]: https://github.com/sjl/badwolf
[2]: https://github.com/tpope/vim-commentary
[3]: https://github.com/kien/ctrlp.vim
[4]: https://github.com/tpope/vim-fugitive
[5]: https://github.com/scrooloose/nerdtree
[6]: http://www.vim.org/scripts/script.php?script_id=1886
[7]: https://github.com/ervandew/supertab
[8]: https://github.com/scrooloose/syntastic
[9]: https://github.com/bling/vim-airline
[10]: https://github.com/gmarik/Vundle.vim

## Instalation

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
