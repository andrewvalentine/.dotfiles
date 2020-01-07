#-----------
# ZSH CONFIG
#-----------

case "$OSTYPE" in
	darwin*)
source ~/.zsh/colors.zsh
source ~/.zsh/macos-exports.zsh
#source ~/.zsh/zsh-git-prompt/zshrc.sh
source ~/.zsh/prompt.zsh
source ~/.zsh/macos-aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/corrections.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/macos-functions.zsh
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
source ~/.zsh/corrections.zsh
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

#------
# FPATH
#------
fpath=(/usr/local/share/zsh-completions $fpath)

#------------
# USER CONFIG
#------------
precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
