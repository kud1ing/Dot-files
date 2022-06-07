# This file is read by all Bourn shell (`sh`) compatible shells.

# Determine the operating system.
if [ -z $OS ]; then
    OS=`uname`
fi

# Aliases ------------------------------------------------------

alias ..='cd ..'

# `ls`
if [ $OS = "Darwin" ] ; then
    # -a: show all files, even hidden ones
    # -F: "/"
    # -G: colors
    # -l: long output format
    alias la='ls -alFG'
    alias ll='ls -lFG'
    alias ls='ls -FG'
else
    # -a: show all files, even hidden ones
    # -F: "/"
    # -l: long output format
    alias la='ls -alF --color=auto'
    alias ll='ls -lF --color=auto'
    alias ls='ls -F'
fi


# Variables ------------------------------------------------------

# Line-oriented editor.
# Used by:
# - `crontab -e`
# - `sudoedit`
EDITOR='vim'

# `git` editor.
GIT_EDITOR='vim'

# History: only unique entries
HISTCONTROL='ignoredups'

# No `Homebrew` analytics.
HOMEBREW_NO_ANALYTICS=1

# Java
if [ $OS = "Darwin" ] ; then
    JAVA_HOME=$(/usr/libexec/java_home)
fi

LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib:$HOME/lib"

# `less`
# -i: ignore case for searches
# -M: prompt more verbosely than "more"
# -n: supress line numbers
LESS='-iMn'

# Used by:
# - ???
PAGER='less'

if [ $OS = "Darwin" ] ; then
    # Homebrew
    PATH="/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:$PATH"cd
    # Python 2.7
    PATH="$HOME/Library/Python/2.7/bin:$PATH"
    # Rust Cargo.
    PATH="$HOME/.cargo/bin:$PATH"
else
    PATH=$HOME/frt/bin:$HOME/frt/lib/DiffTool:$HOME/frt/lib/apache-ant/bin:$PATH
fi

PATH="$PATH:$HOME/bin"

if [ $OS = "Darwin" ] ; then
    PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/usr/local/opt/libffi/lib/pkgconfig"
fi

# Prompt ========================================================================================================

# `bash`: HOSTNAME (cyan) + ":" + PWD + "$" (green):
PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]"

# `zsh`: USERNAME (cyan) + HOSTNAME + PWD + "$"
PROMPT="%F{cyan}%n%f@%F{green}%m%f %F{blue}%B%~%b%f\$ "

# Screen-oriented editor.
# Used by:
# - `crontab -e`
VISUAL="vim"

export EDITOR
export GIT_EDITOR
export HISTCONTROL
export HOMEBREW_NO_ANALYTICS
export JAVA_HOME
export LESS
export LD_LIBRARY_PATH
export PAGER
export PATH
export PKG_CONFIG_PATH
export PS1
export VISUAL
