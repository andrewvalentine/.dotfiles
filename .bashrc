# navigation
alias music='cd /Users/andrew/Music/iTunes/iTunes\ Media/Music/'
alias mky="cd /Volumes/munki_repo"
alias override="cd ~/Library/AutoPkg/RecipeOverrides/"

# config env
alias cfg="vi ~/.ssh/config"
alias hosts="vi ~/.ssh/known_hosts"
alias bash="vi ~/.bash_profile"
alias bashrc="vi ~/.bashrc"

# system
alias reboot="sudo /sbin/shutdown -r now"
alias shutdown="sudo /sbin/shutdown -h now"
alias wol='wakeonlan -f ~/.wakeonlan/avsrv.wol'
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed'

# list top ten files/dirs
alias ducks='du -cks * | sort -rn | head'

# programs
alias mtr='sudo /usr/local/Cellar/mtr/0.86/sbin/mtr'
alias edit="open -a TextWrangler.app $1"
alias bubu='brew update && brew upgrade'

# ls
alias ls='ls -GFh'

# junos
alias startjunos="launchctl load /Library/LaunchAgents/net.juniper.pulsetray.plist"
alias stopjunos="~/scripts/stopjunospulse/stopjunos.sh"
