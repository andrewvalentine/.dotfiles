#!/bin/bash

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

###############################################################################
# Finder                                                                      #
###############################################################################

# Show the ~/Library folder
chflags nohidden ~/Library

# New Finder shows $HOME by default
defaults write com.apple.finder NewWindowTarget PfHm
