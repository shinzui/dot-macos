#!/usr/bin/env bash

if ! command -v mas > /dev/null; then
  printf "Can't find Mac App Store CLI (mas)"
  exit 1
fi

#Twitter
mas install 409789998

#Magnet
mas install 441258766

#Slack
mas install 803453959
