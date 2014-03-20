### Initial System Conf
====
Change Hostname:
	sudo scutil --set HostName


###Adding and Updating Submodule###
=======
git submodule add <remote_repository> vim/bundle/repo
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

git config --global user.name "Ariya Seng"
git config --global user.email natsumi@gmail.com

=======
Removing Submodules

Delete the relevant line from the .gitmodules file
Delete the relevant section from .git/config
Run git rm --cached path_to_submodule (no trailing slash!!)
Remove the directory from bundle_storage
Remove the symbolic link from bundle
Remove any descriptions from the README.md file
=======


### Homebrew Install
====
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

### Ruby Setup
  brew install rbenv ruby-build
  rbenv install 2.1.0
  rbenv global 2.1.0
  gem install bundler
  rbenv rehash

### Python Setup
  brew install python
  pip install virtualenv
  pip install virtualenvwrapper
  pip install youtube-dl

### Node Install
====
  brew install node
  npm install -g coffee-script
  npm install -g grunt-cli
  npm install -g bower
  npm install -g yeoman
  npm install -g grunt-contrib-compass
  npm install -g generator-ember


### Synastic Setup
====
  pip install flake8
  gem install ruby-lint
  gem install rubocop
  gem install scss-lint
  gem install haml-lint
  npm install -g coffeelint
  npm install -g jshint
  npm install -g jsonlint

### Utilities
====
  brew install vim macvim
  brew install wget htop tmux reattach-to-user-namespace
  brew install git
  brew install ctags

### Postgres.app
  http://postgresapp.com/

### Notes
====
  1. Make sure you edit the vimrc file and update the powerline paths
