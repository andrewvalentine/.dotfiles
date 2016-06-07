#--------------------------------
# Munki aliases
#--------------------------------

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
