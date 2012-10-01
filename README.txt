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

======
Python mountain lion fixes:
=====
curl -O http://python-distribute.org/distribute_setup.py
python distribute_setup.py
easy_install pip
pip install virtualenv
easy_install virtualenvwrapper

