# This file is read by all Bourn shell (sh) compatible shells.

# Determine OS.
if [ -z $OS ]; then
    OS=`uname`
fi

# Aliases ------------------------------------------------------

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


# Variables ------------------------------------------------------

EDITOR='vim'
HISTCONTROL='ignoredups' # History: only unique entries

if [ $OS == "Darwin" ] ; then
    JAVA_HOME=$(/usr/libexec/java_home)
fi

LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib:$HOME/lib"

# less
# -i: ignore case for searches
# -M: prompt more verbosely than "more"
# -n: supress line numbers
LESS='-iMn'

PAGER='less'

if [ $OS == "Darwin" ] ; then
    # Homebrew
    PATH="/usr/local/bin:/usr/local/sbin:$PATH"
    # Haskell Cabal
    PATH="$PATH:$HOME/.cabal/bin"
    # Ruby GEMs
    PATH="$PATH:$HOME/.gem/ruby/1.8/bin"
    # Rust Cargo.
    PATH="$PATH:$HOME/.cargo/bin"
else
   PATH=$HOME/frt/bin:$HOME/frt/lib/DiffTool:$HOME/frt/lib/apache-ant/bin:$PATH
fi

PATH="$PATH:$HOME/bin"

# Prompt: HOSTNAME (cyan) + ":" + PWD + "$" (green):
PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]"

VISUAL="$EDITOR"

export EDITOR
export HISTCONTROL
export JAVA_HOME
export LESS
export LD_LIBRARY_PATH
export PAGER
export PATH
export PS1
export VISUAL
