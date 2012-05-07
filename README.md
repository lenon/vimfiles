# ~/.vim

This is my Vim configuration. If you want to use this, please take a look at the following steps...

## Instalation

Clone this repository into your home directory:

    git clone git://github.com/lenon/.vim.git ~/.vim

`cd` into the repo and then update the submodules:

    cd ~/.vim
    git submodule update --init

Add the following line on your ~/.bashrc (or ~/.bash\_profile, ~/.zshrc, etc):

    alias vim="vim -u ~/.vim/vimrc"

Then source your ~/.bashrc (or reopen your terminal):

    source ~/.bashrc

Open Vim:

    vim

And run...

    :BundleInstall

(This will install all the plugins)

## TODO

 * Increment this README with more information about included plugins;

