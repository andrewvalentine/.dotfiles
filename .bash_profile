# Source ~/.bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Modify path
export PATH="/usr/local/git/bin:/usr/local/sbin:~/mac-tools:$PATH"

# Modify prompt
export PS1="\[\033[0;33m\][\u@\h \w]\\$\[\033[0m\] "

# Set colours
export CLICOLOR=1

# Set venv home
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# Set rbenv and gem
export RBENV_ROOT="$(brew --prefix rbenv)"
export GEM_HOME="$(brew --prefix)/opt/gems"
export GEM_PATH="$(brew --prefix)/opt/gems"

# Github token
export HOMEBREW_GITHUB_API_TOKEN=6a11ac9063bd70b916c49d25d78bf2f2eff65fd7

# Brew editor
export HOMEBREW_EDITOR=/usr/bin/vim
