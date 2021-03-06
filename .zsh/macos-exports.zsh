# Setup terminal, and turn on colors
autoload -U colors
colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegcxabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# Reading options
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='vim'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# SSH
export SSH_KEY_PATH=$HOME/.ssh/dsa_id

# Gem
export GEM_HOME=$HOME/.gems

# Go
export GOPATH=$HOME/go

# Virtualenv settings
export WORKON_HOME=$HOME/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# PATH
export PATH=$PATH:/usr/local/sbin:$GEM_HOME/bin
#export PATH=$PATH:/usr/local/sbin:$GEM_HOME/bin:$GO_HOME/bin
