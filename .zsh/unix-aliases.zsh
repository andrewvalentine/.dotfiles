# listing
alias ll='ls -aGFhl'
alias ls='ls -GFh'
alias l='ls -GFh' 

# config env
alias ze="vim ~/.zshrc"
alias cfg="vim ~/.ssh/config"
alias hosts="vim ~/.ssh/known_hosts"
alias bashe="vim ~/.bash_profile"
alias bashrc="vim ~/.bashrc"
alias reload="source ~/.zshrc"
alias dot="cd ~/.dotfiles"
alias vrc="vim ~/.vimrc"

# system
alias reboot="sudo /sbin/shutdown -r now"
alias shutdown="sudo /sbin/shutdown -h now"
alias updatedb="sudo /usr/libexec/locate.updatedb"

# list top ten files/dirs
alias ducks='du -cks * | sort -rn | head'

# grep with color
alias grep='grep --color=auto'
