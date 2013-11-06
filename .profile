# This file is read by all Bourn shell (sh) compatible shells.

# Determine OS.
if [ -z $OS ]; then
    OS=`uname`
fi

# ------------------------------------------------------

alias ..='cd ..'

# ls
# -a: show all files, even hidden ones
# -F: "/"
# -l: long output like

if [ $OS == "Darwin" ] ; then
    # -G: colors
    alias la='ls -alFG'
    alias ll='ls -lFG'
    alias ls='ls -FG'
else
    alias la='ls -alF --color=auto'
    alias ll='ls -lF --color=auto'
    alias ls='ls -F'
fi


# ------------------------------------------------------

export EDITOR='vim'
export HISTCONTROL='ignoredups' # History: only unique entries
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib:$HOME/lib"

# less
# -i: ignore case for searches
# -m: more prompt
# -n: supress line numbers
export LESS='-iMn'

export PAGER='less'


# PATH
if [ $OS == "Darwin" ] ; then
    # Homebrew
    PATH="/usr/local/bin:/usr/local/sbin:$PATH"
    # Haskell Cabal
    PATH="$PATH:$HOME/.cabal/bin"
    # Ruby GEMs
    PATH="$PATH:$HOME/.gem/ruby/1.8/bin"
    # Rust
    PATH="$PATH:$HOME/.rustpkg/bin"
fi

PATH="$PATH:$HOME/bin"

export PATH


export PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]"
export VISUAL="$EDITOR"
