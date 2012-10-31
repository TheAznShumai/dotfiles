""""""""""
"PATHOGEN"
""""""""""
call pathogen#infect()


"""""""""""""""
"LOOK AND FEEL"
"""""""""""""""
syntax on "Syntax highlighting
filetype plugin indent on "Filetype highlighting

colorscheme jellybeans "Colorscheme to pick
set background=dark
set gfn=Menlo\ Regular:h14 "Font settings for OSX
"Set font for Windows
if has("gui_running") && exists("$COMSPEC")
    set gfn=Consolas:h11
endif

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
"set statusline=2 "Always show the statusline
set statusline=%{fugitive#statusline()} "Fugitive status line
set laststatus=2 "Show statusline

set foldmethod=indent "Enable code folding - za to code fold
set foldlevel=99 "Enable code folding

set bs=2 "Backspace overrides anything in INSERT mode
set ttyfast "Better scrolling
set noerrorbells "No noise

"Tab completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"Tab spacing
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4 "Make backspace go back 4 spaces

"If you want the tab settings to be based on a per file-type basis use the the following: 
"autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
"
set colorcolumn=80 "Mark colum 80

"List of files to ignore
set wildignore+=*.git,*.svn,*.o,*.obj,*.egg-info,*.tmp,*.bak,*.swp,*.pyc
"""""""""""""""
"KEY BINDINGS"
"""""""""""""""
let mapleader=','
map <leader>t :CommandTFlush<cr>\|:CommandT<cr>
map <leader>T :CommandTFlush<cr>\|:CommandT %%<cr>
nmap <silent> <leader>s :set nolist!<CR> "Toggle visible tab/trailing space with ,s
"Remape keys to navigate windows use Ctrl+key
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList "Opens up todo task list
map <leader>g :GundoToggle<CR> "Open gundo
let g:pep8_map='<leader>8' "Pep 8 keybinding
map <leader>n :NERDTreeToggle<CR> "Turn on NERD Tree
map <leader>j :RopeGotoDefinition<CR> "RopeVIM keybinding to jump to definiton
map <leader>r :RopeRename<CR> "global rename
nmap <leader>a <Esc>:Ack! "Ack binding
map <F5> :TComment<CR>
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
set wildmode=list:longest  "Tab completes up to point of ambiguityi
set encoding=utf-8 "Set encoding type

let NERDTreeShowHidden=1 "Toggle showing hidden files using I in NERDTree
" Add support for virtualenv code completion
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
