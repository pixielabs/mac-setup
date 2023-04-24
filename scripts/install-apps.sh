#!/usr/bin/env zsh

# Download latest updates to Homebrew
brew update

# Add Heroku tap
brew tap heroku/brew

# Install macOS applications
brew install --cask \
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
    backblaze \
    
# Install heroku
brew install heroku
