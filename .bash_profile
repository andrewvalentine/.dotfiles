# Source ~/.bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Modify path
export PATH="/usr/local/git/bin:$PATH"

# Modify prompt
export PS1="[\u@\h \w]\\$ "

# Set colours
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Set venv home
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# Set rbenv and gem
export RBENV_ROOT="$(brew --prefix rbenv)"
export GEM_HOME="$(brew --prefix)/opt/gems"
export GEM_PATH="$(brew --prefix)/opt/gems"

# Github token
export HOMEBREW_GITHUB_API_TOKEN=6a11ac9063bd70b916c49d25d78bf2f2eff65fd7

#This loads NVM
#export NVM_DIR="/Users/andrew/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

## useful commands
#system profiler via terminal = /usr/sbin/system_profiler
#get serial number = system_profiler SPHardwareDataType
#turn on verbose boot = sudo nvram boot-args="-v"
#turn off verbose boot = sudo nvram boot-args=
#unload junos pulse = launchctl unload -w /Library/LaunchAgents/net.juniper.pulsetray.plist
#load junos pulse = launchctl load -w /Library/LaunchAgents/net.juniper.pulsetray.plist
#lock screen = /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
#show storage volumes = diskutil corestorage list
#unlock encrypted disk = diskutil corestorage unlockVolume UUID -stdinpassphrase
#sleep from terminal = pmset sleepnow
#release/renew DHCP = sudo ipconfig set (DEVICEINTERFACE) DHCP
#xcode license = sudo xcrun cc
#create bootable img = hdiutil convert -format UDRW -o ~/path/to/target.img ~/path/to/os.iso
#unmount disk = diskutil unmountDisk /dev/diskN
#create bootable disk = sudo dd if=/path/to/downloaded.img of=/dev/rdiskN bs=1m
#if ARD locks screen = ps -ax | grep AppleVNCServer
