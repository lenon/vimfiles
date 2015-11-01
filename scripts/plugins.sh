#!/usr/bin/env bash

vim -e \
    -s \
    -u ~/vimfiles/vimrc \
    -S ~/vimfiles/scripts/plugins.vim \
    -c "w >> /dev/stdout" \
    -c q! > ~/vimfiles/PLUGINS.md
