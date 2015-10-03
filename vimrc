set nocompatible                " forces Vim features even if they break vi standards
set ignorecase smartcase        " case-insensitive search unless caps present
set backspace=indent,eol,start  " make backspace work as it should
set path=.,../include           " path used with gf and such
set tabstop=4                   " width of tab
set shiftwidth=4                " number of spaces to use for each step of autoindent 
set expandtab                   " turn on expanded tabs (space tabs)
set smarttab                    " be smart when using tabs
set linebreak                   " turn on linebreaks that won't split words
set hlsearch                    " highlight on search
set incsearch                   " show the first match while typing the search term
set number                      " turn on line numbers
set showmatch                   " when bracket is inserted, briefly highlights matching one
set ruler                       " show the cursor position at the bottom of the window
set showcmd                     " shows the command while it is being typed
set visualbell                  " flash instead of beep
set nobackup                    " no blah~ files
set wrap                        " line wrap
set ai                          " auto indent
set si                          " smart indent
set history=50                  " sets how many lines of history VIM has to remember
set autoread                    " set to auto read when a file is changed from the outside
set magic                       " for regular expressions turn magic on
set encoding=utf-8              " set the encoding displayed
set fileencoding=utf-8          " set the encoding written to file
syntax on                       " syntax coloring
filetype plugin indent on       " enable filetype plugins

" Set color scheme
colorscheme desert
set background=dark

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
