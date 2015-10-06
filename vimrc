set nocompatible                " forces Vim features even if they break vi standards
set ignorecase smartcase        " case-insensitive search unless caps present
set backspace=indent,eol,start  " make backspace work as it should
set path=.,../include           " path used with gf and such
set tabstop=4                   " width of tab
set softtabstop=4               " makes deleting soft-tabs like deleting real tabs
set shiftwidth=4                " width of soft-tabs
set expandtab                   " turn on expanded tabs (space tabs)
set smarttab                    " be smart when using tabs
set hlsearch                    " highlight on search
set incsearch                   " show the first match while typing the search term
set number                      " turn on line numbers
set showmatch                   " when bracket is inserted, briefly highlights matching one
set ruler                       " show the cursor position at the bottom of the window
set showcmd                     " shows the command while it is being typed
set showmode                    " shows the current mode
set visualbell                  " flash instead of beep
set nobackup                    " no blah~ files
set linebreak                   " turn on linebreaks that won't split words
set wrap                        " line wrap
set wrapmargin=2                " wrap 2 characters from right
set autoindent                  " indents like previous line
set smartindent                 " indents extra after { and stuff
set history=50                  " sets how many lines of history VIM has to remember
set autoread                    " set to auto read when a file is changed from the outside
set magic                       " for regular expressions turn magic on
set encoding=utf-8              " set the encoding displayed
set fileencoding=utf-8          " set the encoding written to file
set scrolloff=2                 " scroll offset
set matchpairs+=<:>             " match things other than just parens
set matchtime=2                 " show matching bracket for 0.2 seconds (while typing)
set lazyredraw                  " only redraw when needed
set gdefault                    " default to substitute globally on lines
set background=dark             " tells vim we have a dark terminal (must be before "syntax on")
syntax on                       " syntax coloring
filetype plugin indent on       " enable filetype plugins

" Set color scheme
colorscheme desert

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Allows dot-foo in visual mode
vnoremap . :norm.<CR>

" No accidental "help" (to do it you can do :help)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Make shifts keep visual selection
vnoremap < <gv
vnoremap > >gv

" Easy way to clear highlighting from searches
nnoremap <leader><space> :noh<cr>

" Shortcuts to do vertical or horizontal splits and switch to them
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Shortcuts to easily move around windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
" %: move to matched parens ([{}])
"
" gg: top of file
" G: bottom of file
" :<09>: move to line <09>
" g;: go to last edited position
"
" ^F: page down
" ^B: page up
"
" i: inside (so like cit = change inside XML tag or ci" = change inside " quotes)
"           (you could also use ci( or ci{ or ci[ for some code stuff)
"           (cib = change inside block -- VERY NICE)
"
" v: visual mode (characters)
" V: visual mode (lines)
" ^v: visual block
"
" Within visual selection:
"   >: indent
"   <: unindent
"
" I can also use the 'i' here: vi( vit vi" vi[ etc...
"
" ~: change case
" ^A: increment number
" ^X: decrement number
" ==: fix line indent
"
" ^P: search backwards for autocomplete (this is the one you want!)
"
" :only --> close all other windows
"
" gD: go to definition
" gd: go to [local] definition
"
" :%retab --> switch all leading tabs to spaces
"
" In the help:
"   ^]: follow a |link|
"   ^t or ^o: go back
