#!/usr/bin/env bash

# Load RVM, if you are using it
# [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
# export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin
export PATH="$HOME/.rbenv/bin:$PATH"
#/usr/local should be before anything else
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='natsumi@bitbucket.org'

# Set my editor and git editor
export EDITOR="mvim -f"
export GIT_EDITOR='mvim -f'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
PATH="/usr/local/mysql-5.5.28-osx10.6-x86_64/bin:$PATH"
export PATH

#Set VirtualEnv work dir
export VIRTUALENVWRAPPER_LOG_DIR=$HOME/dev/.virtualenv
export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/dev/.virtualenv
export WORKON_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

# Load Bash It
source $BASH_IT/bash_it.sh

#Load rbenv
eval "$(rbenv init -)"
