#!/usr/bin/env zsh

# Download latest updates to Homebrew
brew update

# Install CLI tools
# Postgresql requires version to be installed, update to the latest
brew install \
    yarn \
    postgresql@17 \
    awscli \
    ruby-build \
    rbenv \
    github/gh/gh \
    git \

# Setup postgres
brew services start postgresql@17

# Link postgres to the system version
brew link postgresql@17

# Make finder show hidden items
defaults write com.apple.Finder AppleShowAllFiles true
