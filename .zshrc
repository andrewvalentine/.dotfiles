#------------
# ZSH CONFIG
#------------

# Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Set custom dir
export ZSH_CUSTOM=$HOME/.dotfiles/zsh_custom

# Theme
ZSH_THEME="norm"

# History format
HIST_STAMPS="dd.mm.yyyy"

# Plugins
plugins=(git colored-man-pages cp web-search colorize pkgsrc munki osx)

source $ZSH/oh-my-zsh.sh

#-----------
# SHORTCUTS
#-----------

bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word
#bindkey "[G" backward-kill-word
#bindkey "[H" kill-word

#-------------
# USER CONFIG
#-------------

# Path
export PATH="$PATH:/usr/local/sbin"

# Set colours
export CLICOLOR=1

# Set venv home
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# Brew editor
export HOMEBREW_EDITOR=/usr/bin/vim

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

#---------
# ALIASES
#---------

# zsh
alias zshrc="$EDITOR ~/.zshrc"
alias omz="$EDITOR ~/.oh-my-zsh"

# navigation
alias music='cd /Users/andrew/Music/iTunes/iTunes\ Media/Music/'
alias mky="cd /Volumes/munki_repo"
alias override="cd ~/Library/AutoPkg/RecipeOverrides/"

# open cwd
alias o='open .'

# config env
alias cfg="vi ~/.ssh/config"
alias hosts="vi ~/.ssh/known_hosts"
alias bashe="vi ~/.bash_profile"
alias bashrc="vi ~/.bashrc"
alias reload="source ~/.zshrc"
alias dot="cd ~/.dotfiles"
alias vrc="vim ~/.vimrc"

# system
alias reboot="sudo /sbin/shutdown -r now"
alias shutdown="sudo /sbin/shutdown -h now"
alias wol='wakeonlan -f ~/.wakeonlan/avsrv.wol'
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# list top ten files/dirs
alias ducks='du -cks * | sort -rn | head'

# programs
alias mtr='sudo /usr/local/Cellar/mtr/0.86/sbin/mtr'
alias edit="open -a TextWrangler.app $1"
alias bubu='brew update && brew upgrade'
alias cf='caffeinate'
alias pw="/usr/local/bin/password-generator"

# ls
alias ls='ls -Fh'

# grep with color
alias grep='grep --color=auto'

# junos
alias stopjunos="launchctl unload /Library/LaunchAgents/net.juniper.pulsetray.plist"
alias startjunos="launchctl load /Library/LaunchAgents/net.juniper.pulsetray.plist"

# remount ejected usb
alias reup="sudo kextunload /System/Library/Extensions/IOUSBMassStorageDriver.kext && sudo kextload /System/Library/Extensions/IOUSBMassStorageDriver.kext"
