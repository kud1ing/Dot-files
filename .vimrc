set autoindent                 " auto-indent new lines? yes
set backspace=indent,eol,start " backspace over everything
set nobackup                   " write backup files? no
set nocompatible               " emulate vi bugs? no
set encoding=utf-8             " encoding used internally
set noerrorbells               " error bell? no
set expandtab                  " convert tabs to spaces? yes
set fileencodings=utf-8,latin1 " encodings that are tried to exclude
set gdefault                   " substitute all matches in a line? yes
set history=50                 " number of command lines in the history
set hlsearch                   " highlight all search matches? yes
set ignorecase                 " case-insensitive searching? yes
set incsearch                  " incremental search? yes
"set insertmode                 " insert mode is the default mode? yes
set list                       " show white-space characters? yes
set listchars=trail:.          " show trailing spaces
set number                     " show line numbers? yes
set ruler                      " show cursor position? yes
set scrolloff=4                " keep this many lines off the edges of the screen when scrolling
set shiftwidth=4               " (auto)indent with X spaces
set noshowmatch                " show matching brackets? no
set showmode                   " show the current mode? yes
set smartcase                  " override the 'ignorecase' if the pattern contains upper case characters? yes
set softtabstop=4              " backspace should remove this many spaces
set nostartofline              " jump to first character when paging? no
set tabstop=4                  " tab := number of X spaces
set termencoding=utf-8         " encoding in the terminal
set textwidth=79               " maximum text width
set undolevels=1000            " number of undo levels
set novisualbell               " visual bell? no
set whichwrap+=<,>,[,]         " allow <Left> and <Right> to wrap around line breaks
set wildignore=*.hi,*.o,*.pyc  " command-line completion: ignore those files
set wildmenu                   " command-line completion? yes
set wildmode=list:full         " command-line completion: show list, use first full match
set nowrap                     " wrap lines? no
set nowritebackup              " create temporary file while writing? no

colorschem darkblue
setglobal fileencoding=utf-8   " UTF8 for new files
syntax on                      " syntax highlighing? yes

if has("gui_running")
    set background=light       " adapt colors for background
else
    set background=dark        " adapt colors for background
endif
