#!/bin/bash

#Enable trackpad tap to click
#Requires log out/in cycle to take effect

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


#Disable user interface sound effects
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

#Add bris.ac.uk search domains
networksetup -setsearchdomains Ethernet users.bris.ac.uk isys.bris.ac.uk fen.bris.ac.uk cs.bris.ac.uk een.bris.ac.uk enm.bris.ac.uk cen.bris.ac.uk men.bris.ac.uk bris.ac.uk
networksetup -setsearchdomains Wi-Fi users.bris.ac.uk isys.bris.ac.uk fen.bris.ac.uk cs.bris.ac.uk een.bris.ac.uk enm.bris.ac.uk cen.bris.ac.uk men.bris.ac.uk bris.ac.uk

#Turn off Bluetooth
defaults write com.apple.Bluetooth ControllerPowerState 0

#Customize data/time format
defaults write com.apple.menuextra.clock DateFormat = "d MMM  HH:mm"
defaults write com.apple.menuextra.clock FlashDateSeparators -int 0
defaults write com.apple.menuextra.clock IsAnalog -int 0

#Autohide Dock
defaults write com.apple.dock autohide -int 1 && killall Dock

##Finder
#Set New Window Target to $HOME
defaults write com.apple.finder NewWindowTarget -string "PfHm"
#Set Column View as default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
CFPreferencesAppSynchronize "com.apple.finder"

echo "Some changes need a restart..."
