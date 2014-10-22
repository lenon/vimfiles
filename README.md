# Vimfiles

These are my Vim files. I've created these from scratch to suit my needs, so
don't expect lots and lots of useless stuff here. :smile:

## Plugins

 * [badwolf][6] - Badwolf colorscheme.
 * [commentary.vim][8] - Comment code.
 * [ctrlp.vim][1] - Full path file finder (or Textmate's ⌘T for Vim).
 * [fugitive.vim][4] - Git integration.
 * [NERD Tree][3] - File explorer in the form of a tree.
 * [nginx.vim][7] - Highlights Nginx configuration files.
 * [Supertab][2] - Auto-complete with \<tab\>.
 * [Syntastic][9] - Syntax checking.
 * [vim-airline][5] - Awesome status line.

## Instalation

Clone this repository into your home directory:

    git clone git://github.com/lenon/vimfiles.git ~/vimfiles

Go to the cloned repo and then update submodules:

    cd ~/vimfiles
    git submodule update --init

Link `vimrc` and `gvimrc`:

    ln -s ~/vimfiles/vimrc ~/.vimrc
    ln -s ~/vimfiles/gvimrc ~/.gvimrc

Install all plugins:

    vim +PluginInstall +qall

Start `vim` and enjoy. :beer:

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

[1]: https://github.com/kien/ctrlp.vim
[2]: https://github.com/ervandew/supertab
[3]: https://github.com/scrooloose/nerdtree
[4]: https://github.com/tpope/vim-fugitive
[5]: https://github.com/bling/vim-airline
[6]: https://github.com/sjl/badwolf
[7]: http://www.vim.org/scripts/script.php?script_id=1886
[8]: https://github.com/tpope/vim-commentary
[9]: https://github.com/scrooloose/syntastic
