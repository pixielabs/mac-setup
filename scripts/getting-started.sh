#!/usr/bin/env zsh

# Download latest updates to Homebrew
brew update

# Install CLI tools
brew install \
    yarn \
    nvm \
    postgresql \
    awscli \
    ruby-build \
    rbenv \
    github/gh/gh \
    git \

# Install macOS applications
brew cask install \
    slack \
    front \
    google-chrome \
    visual-studio-code \
    postman \
    1password \
    iterm2 \
    datagrip \
    postico \
    spotify \
    zoom \
    docker \

# Setup postgres
brew services start postgresql

# Make finder show hidden items
defaults write com.apple.Finder AppleShowAllFiles true
