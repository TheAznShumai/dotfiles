Don't forget to update submodules
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

git config --global user.name "Ariya Seng"
git config --global user.email natsumi@gmail.com

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
