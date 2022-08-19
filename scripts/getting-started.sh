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

# Setup postgres
brew services start postgresql

# Make finder show hidden items
defaults write com.apple.Finder AppleShowAllFiles true
