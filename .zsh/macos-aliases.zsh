#--------
# General
#--------

# listing
alias ll='ls -aGFhl'
alias ls='ls -GFh'
alias l='ls -GFh' 

# navigation
alias music='cd /Users/andrew/Music'
alias mky="cd /Volumes/munki_repo"
alias override="cd ~/Library/AutoPkg/RecipeOverrides/"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"

# open cwd
alias o='open .'

# config env
alias ze="vim ~/.zshrc"
alias cfg="vim ~/.ssh/config"
alias hosts="vim ~/.ssh/known_hosts"
alias bashe="vim ~/.bash_profile"
alias bashrc="vim ~/.bashrc"
alias reload="source ~/.zshrc"
alias dot="cd ~/.dotfiles"
alias vrc="vim ~/.vim/vimrc"

# system
alias reboot="sudo /sbin/shutdown -r now"
alias shutdown="sudo /sbin/shutdown -h now"
alias wol='wakeonlan -f ~/.wakeonlan/avnas.wol'
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias kickstart='sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart'

# list top ten files/dirs
alias ducks='du -cks * | sort -rn | head'

# programs
alias mtr='sudo /usr/local/Cellar/mtr/0.86/sbin/mtr'
alias edit="open -a TextWrangler.app $1"
alias bubu='brew update && brew upgrade'
alias cf='caffeinate'
alias pw='/usr/local/bin/sf-pwgen'
alias afw='sudo /usr/libexec/ApplicationFirewall/socketfilterfw'
alias deluged='/Applications/Deluge.app/Contents/MacOS/deluged'
alias deluge='/Applications/Deluge.app/Contents/MacOS/deluge-console'
alias mullvad='/Applications/Mullvad\ VPN.app/Contents/Resources/mullvad'

# grep with color
alias grep='grep --color=auto'

# remount ejected usb
alias reup="sudo kextunload /System/Library/Extensions/IOUSBMassStorageDriver.kext && sudo kextload /System/Library/Extensions/IOUSBMassStorageDriver.kext"

#---------
# Software
#---------

alias pip="/usr/local/bin/pip3"
alias python="/usr/local/bin/python3"

#--------------
# Munki aliases
#--------------

# Managed Software Update
alias msu="sudo managedsoftwareupdate"
alias msua="sudo managedsoftwareupdate --auto"
alias msuv="sudo managedsoftwareupdate -vvv"
alias msum="sudo managedsoftwareupdate --munkipkgsonly"
alias msus="sudo managedsoftwareupdate --applesuspkgsonly"
alias msui="sudo managedsoftwareupdate --installonly"

# Logging
alias msulog="tail -f /Library/Managed\ Installs/Logs/ManagedSoftwareUpdate.log"

# Preferences
alias msup="defaults read /Library/Preferences/ManagedInstalls"

# MSC
alias msc="open /Applications/Managed\ Software\ Center.app"
