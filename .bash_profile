#!/bin/bash
export PATH="/usr/local/git/bin:$PATH"
source .alias

## useful commands
#system profiler via terminal = /usr/sbin/system_profiler
#turn on verbose boot = sudo nvram boot-args="-v"
#turn off verbose boot = sudo nvram boot-args=
#unload junos pulse = launchctl unload -w /Library/LaunchAgents/net.juniper.pulsetray.plist
#load junos pulse = launchctl load -w /Library/LaunchAgents/net.juniper.pulsetray.plist
#lock screen = /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
#show storage volumes = diskutil corestorage list
#unlock encrypted disk = diskutil corestorage unlockVolume UUID -stdinpassphrase
#sleep from terminal = pmset sleepnow
