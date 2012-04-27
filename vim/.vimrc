""""""""""
"PATHOGEN"
""""""""""
call pathogen#infect()


"""""""""""""""
"LOOK AND FEEL"
"""""""""""""""
syntax on "Syntax highlighting
filetype plugin indent on "Filetype highlighting

colorscheme jellybeans
set background=dark

set title "Show filename in titlebar
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set ruler "Set Ruler
set nu "Line numbers on
set nowrap "Line wrapping off
set cursorline "Highlights current line
set scrolloff=3 "Number of lines to below cursor to start auto scroll
set hlsearch "Highlight search terms
set incsearch "Highlight as term is being typed
set shortmess=atI "Reduces prompts check :help shortmess for more info
"set list!
"set listchars=tab:>-,trail:~,eol:$ "Makes these characters visible
set statusline=2 "Always show the statusline

"""""""""""""""
"KEY BINDINGS"
"""""""""""""""
let mapleader=','
map <leader>t :CommandTFlush<cr>\|:CommandT<cr>
map <leader>T :CommandTFlush<cr>\|:CommandT %%<cr>
nmap <silent> <leader>s :set nolist!<CR> "Toggle visible tab/trailing space with ,s
"""""""""""""""""""
"Misc Options
"""""""""""""""""""
set hidden

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

set timeoutlen=250 "Time to wait after ESC (default causes an annoying delay)
set history=256
set ignorecase "Case insensitive search
set smartcase "Case sensitive search if theres a capital letter in search string

set wildmenu "Show more than 1 item for tab completion
set wildmode=list:longest  "Tab completes up to point of ambiguity