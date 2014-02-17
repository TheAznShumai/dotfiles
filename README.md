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

Dot files are hidden when using ls
make sure to use ls -alh

=======

1. install xcode
2. install command line tools
3. install brew
4. install rbenv
5. install ruby 1.8.7 and build command-t module
CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl` --without-tcl --without-tk" rbenv install
6. brew install node
7. npm install coffee-script
8. npm install jshint
