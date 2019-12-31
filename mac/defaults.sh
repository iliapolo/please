#!/usr/bin/env bash

defaults write NSGlobalDomain AppleLocale en_US
defaults write com.apple.dock orientation left && killall -HUP Dock
defaults write com.apple.dock tilesize -int 32 && killall Dock