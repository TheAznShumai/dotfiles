""""""""""
"PATHOGEN"
""""""""""
call pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""
"LOOK AND FEEL"
"""""""""""""""
colorscheme jellybeans
set background=dark

set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
"""""""""""""""""""
"disable backups
"""""""""""""""""""
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files