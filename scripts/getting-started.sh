#!/usr/bin/env zsh

# Download latest updates to Homebrew
brew update

# Install CLI tools
# Postgresql requires version to be installed, update to the latest
brew install \
    yarn \
    postgresql@15 \
    awscli \
    ruby-build \
    rbenv \
    github/gh/gh \
    git \

# Setup postgres
brew services start postgresql@15

# Link postgres to the system version
brew link postgresql@15

# Make finder show hidden items
defaults write com.apple.Finder AppleShowAllFiles true
