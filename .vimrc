" Variables:
let loaded_matchparen=1        " do not show matching brackets

" Options:
set autoindent                 " auto-indent new lines
set backspace=indent,eol,start " backspace over everything
set nobackup                   " no backup files
set clipboard=unnamed          " interact with the system clipboard
set nocompatible               " no vi bugs emulation
set encoding=utf-8             " UTF-8 used internally
set noerrorbells               " no error bell
set expandtab                  " convert tabs to spaces
set fileencodings=utf-8,latin1 " encodings that are tried to exclude
set gdefault                   " substitute all matches in a line
set history=50                 " number of command lines in the history
set hlsearch                   " highlight all search matches
set ignorecase                 " case-insensitive searching
set incsearch                  " incremental search
set list                       " show white-space characters
set listchars=trail:.          " show trailing spaces
set number                     " show line numbers
set ruler                      " show cursor position
set scrolloff=4                " keep N lines off the edges of the screen when scrolling
set shiftwidth=4               " (auto)indent with N spaces
set noshowmatch                " do not jump to the matching bracket
set showmode                   " show the current mode
set smartcase                  " override 'ignorecase' if the pattern contains upper case characters
set softtabstop=4              " backspace should remove N spaces
set nostartofline              " do not jump to first character when paging
set tabstop=4                  " tab := number of N spaces
set termencoding=utf-8         " UTF-8 in the terminal
set undolevels=1000            " N undo levels
set novisualbell               " no visual bell
set whichwrap+=<,>,[,]         " allow <Left> and <Right> to wrap around line breaks
set wildignore=*.hi,*.o,*.pyc  " command-line completion: ignore those files
set wildmenu                   " command-line completion
set wildmode=list:full         " command-line completion: show list, use first full match
set nowrap                     " do not wrap lines
set nowritebackup              " no temporary files

if version >= 740
    colorschem darkblue
endif

setglobal fileencoding=utf-8   " UTF-8 for new files
syntax on                      " syntax highlighing

if has("gui_running")
    set background=light       " adapt colors for background
else
    set background=dark        " adapt colors for background
endif
