#!/usr/bin/env bash

# Selfcontrol
printf "Configuring Selfcontrol"
defaults write org.eyebeam.SelfControl BlockDuration -int 90
defaults write org.eyebeam.SelfControl HostBlacklist -array facebook.com instagram.com twitter.com news.google.com news.ycombinator.com reddit.com espnfc.us espn.com

#Transmission
printf "Configuring Transmission"

mkdir -p ~/Downloads/tmp
mkdir -p ~/Downloads/bt

# Set up download folders
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/tmp"
defaults write org.m0k.transmission DownloadLocationConstant -bool true
defaults write org.m0k.transmission DownloadFolder -string "${HOME}/Downloads/bt"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Don't ask before opening Magnet links
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# IP block list.
# Source: https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true
