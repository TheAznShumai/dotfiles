#!/usr/bin/bash

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

# setup rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone -- git://github.com/carsomyr/rbenv-bundler.git \
      ~/.rbenv/plugins/bundler
git clone https://github.com/sstephenson/ruby-build.git \
      ~/.rbenv/plugins/ruby-build

mkdir -p ~/dev/.virtualenv
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
rmdir ~/.vim/bundle

git config --global core.excludesfile  ~/dev/dotfiles/git/.gitignore_global

ln -s ~/dev/dotfiles/vim/bundle ~/.vim/
ln -s ~/dev/dotfiles/vim/snippets ~/.vim/
ln -s ~/dev/dotfiles/vim/.vimrc ~/
ln -s ~/dev/dotfiles/bash/bash-it/ ~/.bash_it
ln -s ~/dev/dotfiles/bash/.bash_profile ~/
