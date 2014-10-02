# ~/.vim

These are my Vim configuration files. I've created these from scratch to suit
my needs, so don't expect to find lots and lots of useless stuff here. :)

## Plugins

| Plugin name         | Description                                       |
| ------------------- | ------------------------------------------------- |
| [ctrlp.vim][1]      | Full path file finder (or Textmate's ⌘T for Vim). |
| [Supertab][2]       | Auto-complete with \<tab\>.                       |
| [NERD Tree][3]      | File explorer in the form of a tree.              |
| [fugitive.vim][4]   | Git integration.                                  |
| [vim-airline][5]    | Awesome status line.                              |
| [badwolf][6]        | Badwolf colorscheme.                              |
| [nginx.vim][7]      | Highlights Nginx configuration files.             |
| [commentary.vim][8] | Comment code.                                     |
| [Syntastic][9]      | Syntax checking.                                  |

## iTerm

The color scheme in use is Base16 Monokai. If you want to use vim on terminal,
install the following color preset:

[base16-monokai.dark.itermcolors][10]

There are more instructions on [Base16's repository][11].

## Instalation

Clone this repository into your home directory:

    git clone git://github.com/lenon/.vim.git ~/.vim

Go to the cloned repo and then update submodules:

    cd ~/.vim
    git submodule update --init

Link `vimrc` and `gvimrc`:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Open Vim:

    vim

And install plugins:

    :BundleInstall

Restart vim and enjoy. :beer:

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
[10]: https://raw.github.com/chriskempson/base16-iterm2/master/base16-monokai.dark.itermcolors
[11]: https://github.com/chriskempson/base16-iterm2
