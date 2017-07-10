#!/usr/bin/env bash

printf "Configuring Selfcontrol"
defaults write org.eyebeam.SelfControl BlockDuration -int 90
defaults write org.eyebeam.SelfControl HostBlacklist -array facebook.com instagram.com twitter.com news.google.com news.ycombinator.com reddit.com espnfc.us espn.com
