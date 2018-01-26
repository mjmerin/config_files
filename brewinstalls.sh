#!/bin/sh

# Homebrew All the Things I Need
#
# Install all the things I need on a macos system using Homebrew
# To execute: save and `chmod +x ./brewinstalls.sh` then `./brewinstalls.sh`

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

#Programming Languages
echo "Installing Programming Languages..."
brew install node
brew install python3
brew install ruby

#Dev Tools
echo "Installing SW Development Tools..."
brew install bash-completion
brew install git
brew install git-extras
brew install tree
brew install watch
brew cask install dash
brew cask install emacs
brew cask install iterm2
brew cask install macvim
brew cask install visual-studio-code

#Communication Apps
echo "Installing Communication Apps"
brew cask install skype
brew cask install slack

#Web Stuff
echo "Installing Browsers..."
brew cask install firefox
brew cask install google-chrome

#Productivity Tools
echo "Installing Productivity Tools..."
brew install htop
brew install the_silver_searcher
brew install tmux
brew install googler
brew install dict
