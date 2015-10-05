set nocompatible                " forces Vim features even if they break vi standards
set ignorecase smartcase        " case-insensitive search unless caps present
set backspace=indent,eol,start  " make backspace work as it should
set path=.,../include           " path used with gf and such
set tabstop=4                   " width of tab
set shiftwidth=4                " number of spaces to use for each step of autoindent 
set expandtab                   " turn on expanded tabs (space tabs)
set smarttab                    " be smart when using tabs
set hlsearch                    " highlight on search
set incsearch                   " show the first match while typing the search term
set number                      " turn on line numbers
set showmatch                   " when bracket is inserted, briefly highlights matching one
set ruler                       " show the cursor position at the bottom of the window
set showcmd                     " shows the command while it is being typed
set visualbell                  " flash instead of beep
set nobackup                    " no blah~ files
set linebreak                   " turn on linebreaks that won't split words
set wrap                        " line wrap
set wm=2                        " wrap 2 characters from right
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

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Allows dot-foo in visual mode
vnoremap . :norm.<CR>

" Reference:
"
" (Note: ^ = control)
" 
" q<az>: start recording macro in buffer named by letter. q to stop recording.
" @<az>: play back macro in buffer.
" @@: play last macro
" :norm @<az> --> play macro on visual selection
"
" *: search for instances of word under cursor
" 
" 0: beginning of line
" $: end of line
" ^: first non-blank character in the line
"
" H: move to the top of the screen
" M: move to the middle of the screen
" L: move to the bottom of the screen
"
" gg: top of file
" G: bottom of file
" :<09>: move to line <09>
" 
" ^F: page down
" ^B: page up
"
" i: inside (so like cit = change inside XML tag or ci" = change inside " quotes)
"           (you could also use ci( or ci{ or ci[ for some code stuff)
"
" v: visual mode (characters)
" V: visual mode (lines)
" ^v: visual block
"
" I can also use the 'i' here: vi( vit vi" vi[ etc...
