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
alias reload="source ~/.bash_profile"
alias dot="cd ~/.dotfiles"

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

# source bash-git-prompt
source ~/.bash-git-prompt/gitprompt.sh
  GIT_PROMPT_ONLY_IN_REPO=1
