#!/usr/bin/bash
mkdir -p ~/dev/.virtualenv
mkdir -p ~/.vim/autoload 
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git config --global core.excludesfile  ~/dev/dotfiles/git/.gitignore_global

ln -s $PWD/vim/bundle ~/.vim/
ln -s $PWD/vim/snippets ~/.vim/
ln -s $PWD/vim/.vimrc ~/
ln -s $PWD/bash/bash-it/ ~/.bash_it
ln -s $PWD/bash/.bash_profile ~/
ln -s $PWD/rails/.gemrc ~/
ln -s $PWD/rails/.pryrc ~/
