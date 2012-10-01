#!/usr/bin/bash

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

