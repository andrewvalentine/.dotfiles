# PATH
export PATH=$PATH:~/.local/bin

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

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
export SSH_KEY_PATH="~/.ssh/dsa_id"
