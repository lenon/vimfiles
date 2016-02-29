# Vimfiles

These are my Vim configuration files. I created them over time to suit my needs,
so don't expect lots and lots of useless stuff here. :smile:

## Requirements

Vim 7.4 is the only requirement. I'm currently using Vim in the command-line on
a Mac OS X, but this configuration should work on other environments without
problems.

## Installation

Clone this repo into your home directory:

    git clone --recursive git://github.com/lenon/vimfiles.git ~/vimfiles

Then execute the installation script:

    ~/vimfiles/scripts/install.sh

Start `vim` and enjoy! :beer:

## iTerm 2

To get precise colors, please use the
[gruvbox colorscheme for iTerm][gruvbox-iterm].

[gruvbox-iterm]: https://raw.githubusercontent.com/morhetz/gruvbox-contrib/master/iterm2/gruvbox-dark.itermcolors

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
