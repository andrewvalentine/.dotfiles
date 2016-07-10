autoload -U compinit && compinit                                                                                       
zmodload -i zsh/complist

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# autocomplete with arrow keys
zstyle ':completion:*' menu select

# autocomplete aliases
setopt COMPLETE_ALIASES
