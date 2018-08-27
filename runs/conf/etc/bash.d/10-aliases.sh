#!/usr/bin/env bash

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# navigation
alias ll='LC_COLLATE=C ls -alFh'
alias la='LC_COLLATE=C ls -A'
alias l='LC_COLLATE=C ls -AlFh'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# grep
alias gr='grep -Hirn --exclude-dir=.git --exclude-dir=.svn --exclude-dir=.idea'

mkcd() {
  mkdir "$1"
  cd "$1"
}

# disk usage
alias du='du -h'
alias df='df -h'
alias dus='du -hs .'

# user administration
alias ua='sudo useradd -m -s /bin/bash'
alias ur='sudo userdel'

# internet
alias dw='curl -LO --progress-bar'
alias x='tzz extract'

##
# hide stdout
##
tzz() {
    "$@" > /dev/null || return $?
}
export -f tzz

##
# hide stdout and stderr
##
TZZ() {
    "$@" &> /dev/null || return $?
}
export -f TZZ

##
# extract archives in unified manner
##
extract() {
    mime_type=`file -b --mime-type "$1"`
    case "$mime_type" in
        'application/gzip') tar xfz "$1"
        ;;
        'application/x-bzip2') tar xfj "$1"
        ;;
        'application/x-tar') tar xf "$1"
        ;;
        'application/zip') unzip "$1"
        ;;
    esac
}
