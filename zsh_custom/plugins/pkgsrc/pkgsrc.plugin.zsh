#---------------
# Pkgsrc aliases
#---------------

#-------------
# pkgin
#-------------
alias pkls="pkgin list"
alias pka="pkgin avail"
alias pks="pkgin search"
alias pkug="pkgin upgrade"

alias pki="sudo pkgin install"
alias pkup="sudo pkgin update"
alias pkr="sudo pkgin remove"
alias pkar="sudo pkgin autoremove"
alias pkfu="sudo pkgin full-upgrade"
alias pkc="sudo pkgin clean"
alias pupu="sudo pkgin update && sudo pkgin upgrade"
alias parc="sudo pkgin autoremove && sudo pkgin clean"
alias puke="pupu && parc"
