#-----------
# ZSH CONFIG
#-----------

case `uname` in
	Darwin)
source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/osx-exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/osx-aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if which passpie > /dev/null; then eval "$(passpie complete zsh)"; fi
;;
	Linux)
source ~/.zsh/colors.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/unix-aliases.zsh
source ~/.zsh/unix-exports.zsh
source ~/.local/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
;;
esac

#----------
# SHORTCUTS
#----------

bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word

#------------
# USER CONFIG
#------------
precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}
