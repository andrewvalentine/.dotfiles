#!/bin/bash

# Detemine hardware type
HW="$(sysctl hw.model)"

# Generic configuration

## Finder configuration
# Set New Window Target to $HOME
defaults write com.apple.finder NewWindowTarget -string "PfHm"
# Set Column View as default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

## Sound
# Disable user interface sound effects
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

## Menu bar configuration
# Date/time configuration
defaults write com.apple.menuextra.clock DateFormat = "EEE d MMM  HH:mm"
defaults write com.apple.menuextra.clock FlashDateSeparators -int 0
defaults write com.apple.menuextra.clock IsAnalog -int 0

## Dock configuration
# autohide
defaults write com.apple.dock autohide -int 1 && killall Dock

## Firewall configuration
FW="/usr/libexec/ApplicationFirewall/socketfilterfw"

$FW --setallowsigned on
$FW --setallowsignedapp off
$FW --setglobalstate on

if [[ $HW == *"iMac"* ]]; then
	
	# Enable right click
	defaults write com.apple.AppleMultitouchMouse MouseButtonMode -string TwoButton

	# Configure search domains
	networksetup -setsearchdomains Ethernet users.bris.ac.uk isys.bris.ac.uk fen.bris.ac.uk cs.bris.ac.uk een.bris.ac.uk enm.bris.ac.uk cen.bris.ac.uk men.bris.ac.uk bris.ac.uk

elif [[ $HW == *"MacBook"* ]]; then

	# Disable Bluetooth
	defaults write com.apple.Bluetooth ControllerPowerState 0

	# Enable trackpad tap to click

	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

	defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

	defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

	# Configure search domains
	networksetup -setsearchdomains Wi-Fi users.bris.ac.uk isys.bris.ac.uk fen.bris.ac.uk cs.bris.ac.uk een.bris.ac.uk enm.bris.ac.uk cen.bris.ac.uk men.bris.ac.uk bris.ac.uk
	
	networksetup -setsearchdomains "Thunderbolt Ethernet Slot 1" users.bris.ac.uk isys.bris.ac.uk fen.bris.ac.uk cs.bris.ac.uk een.bris.ac.uk enm.bris.ac.uk cen.bris.ac.uk men.bris.ac.uk bris.ac.uk

	# Battery meter config
	defaults write com.apple.menuextra.battery ShowPercent -string YES

else
	"Cannot determine Mac Model"

fi

CFPreferencesAppSynchronize "com.apple.finder"

echo "Finished - some changes need a restart..."
