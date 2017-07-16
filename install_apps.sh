#!/usr/bin/env bash

readonly applications=(
  alfred
  appcleaner
  caffeine
  google-chrome
  iterm2
  muzzle
  keybase
  selfcontrol
  sourcetree
  adobe-creative-cloud
  transmission
  flycut
  pritunl
  zoomus
  medis
  duet
)

install_app() {
  if test ! $(brew cask list |grep "$app"); then
    echo "installing $app"
    brew cask install --appdir="/Applications" $app
  else
    echo "$app is already installed. Skipping..."
  fi
}

for app in "${applications[@]}"; do
  install_app "$app"
done

open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'
