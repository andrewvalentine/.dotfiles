#-----------
# ZSH CONFIG
#-----------

case "$OSTYPE" in
	darwin*)
source ~/.zsh/colors.zsh
source ~/.zsh/osx-exports.zsh
source ~/.zsh/zsh-git-prompt/zshrc.sh
source ~/.zsh/prompt.zsh
source ~/.zsh/osx-aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/osx-functions.zsh
if which passpie > /dev/null; then eval "$(passpie complete zsh)"; fi
;;
	linux*)
source ~/.zsh/colors.zsh
source ~/.zsh/zsh-git-prompt/zshrc.sh
source ~/.zsh/prompt.zsh
source ~/.zsh/unix-aliases.zsh
source ~/.zsh/unix-exports.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
