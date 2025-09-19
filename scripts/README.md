# macOS Development Environment Setup

This guide walks you through setting up a macOS development environment step by step.
It installs CLI tools with Homebrew, configures PostgreSQL, sets up Ruby with `rbenv`, enables hidden files in Finder, and more.

---

## Homebrew

### 0. Install Homebrew

If you don’t already have Homebrew installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


### 1. Updating and Upgrading Homebrew

Update Homebrew to the latest version and upgrade all installed formulae and casks to their latest versions:

```bash
brew update && brew upgrade
```

---

## Install CLI Tools with Homebrew — Step by Step

Make sure Homebrew is installed on macOS before running these steps.

---

### 0. Install Yarn

**What it is:** JavaScript package manager for Node.js projects.

```bash
brew install yarn
```

### 1. Install PostgreSQL 17

**What it is:** Relational database server (version 17) used for storing and managing structured data.

```bash
brew install postgresql@17

# Check the version of postgres installed is correct
psql --version

# Setup postgres
brew services start postgresql@17

# Link binaries so psql and related commands are available:
brew link postgresql@17
```

### 2. Install AWS CLI

**What it is:** Command-line interface for Amazon Web Services (AWS).
It lets you manage AWS resources (S3, EC2, IAM, etc.) directly from the terminal.

```bash
brew install awscli
```

### 3. Install ruby-build

**What it is:** A plugin that provides an `rbenv install` command to compile and install different Ruby versions on your system.
It works together with `rbenv` to let you manage multiple Ruby versions.

```bash
brew install ruby-build
```

### 4. Install rbenv

**What it is:** A Ruby version manager.
It allows you to install, manage, and switch between multiple Ruby versions on the same system.

```bash
brew install rbenv
```

### 5. Install GitHub CLI (`gh`)

**What it is:** A command-line tool for GitHub.
It lets you work with repositories, pull requests, issues, and authentication without leaving the terminal.

```bash
brew install github/gh/gh
```

### 6. Install Git

**What it is:** A distributed version control system.
It allows you to track changes in your code, collaborate with others, and manage project history.

```bash
brew install git
```

### 7. Show Hidden Files in Finder

**What it is:** By default, macOS Finder hides files and folders that start with a dot (e.g., `.gitignore`, `.env`).
This command makes Finder display those hidden files.

```bash
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder   # restart Finder so the setting takes effect
```