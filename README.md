# Apple Mac - Getting Started

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Install Homebrew](#install-homebrew)
- [Run Getting Started Scripts](#run-getting-started-scripts)
- [Setup VSCode](#setup-vscode)
  - [Recommended Extensions](#recommended-extensions)
  - [Extensions](#extensions)
  - [Settings](#settings)
- [Setup NPM](#setup-npm)
- [Setup NVM](#setup-nvm)
- [Ruby, Bundle and Rails](#ruby-bundle-and-rails)
- [Setup Rbenv](#setup-rbenv)
- [Setup Postgres](#setup-postgres)
- [Setup Email](#setup-email)
- [Browser Extensions](#browser-extensions)
- [Database Management](#database-management)
    - [Datagrip](#datagrip)
    - [Postico](#postico)
- [SSH Keys / Cloning from GitHub](#ssh-keys--cloning-from-github)
- [Team Communication](#team-communication)
- [Slack Screen Recording](#slack-screen-recording)
- [Doctoc](#doctoc)
    - [Usage Examples](#usage-examples)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Install Homebrew

Install [Homebrew](https://brew.sh/):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> The ./getting-started.sh should contain all the applications and cli tools you'll need to get up and running quickly.  
> If you need anything else you can get it using Homebrew. `brew install [formula]` (for CLI tools) or `brew cask install [cask]` (for applications)  
> [Search Homebrew](https://formulae.brew.sh/) for formulae and casks

## Run Getting Started Scripts

> **Warning: You'll need Homebrew installed before running these script.**  

```bash
touch ~/getting-started.sh
```

Copy and paste the entire contents of the script file from this repo into the newly created file.

```bash
nano ~/getting-started.sh
# paste
#(to exit)
ctrl and x
```

Now run the following to make the shell files executable:

```bash
sudo chmod -R 755 ~/getting-started.sh
```

Now you can run the script:

```bash
~/getting-started.sh
```

## Setup VSCode

Or skip this section and setup your preferred text editor.

### Recommended Extensions

Run the following block to install some recommended VS Code settings.

```bash
code --install-extension eamodio.gitlens
code --install-extension wmaurer.change-case
code --install-extension oderwat.indent-rainbow
code --install-extension pranaygp.vscode-css-peek
code --install-extension shardulm94.trailing-spaces
code --install-extension ms-azuretools.vscode-docker
code --install-extension Cardinal90.multi-cursor-case-preserve
```

If you already have VSCode setup on another laptop and would like to re-use your current extensions  
follow these steps on the *old* laptop:

### Extensions
- Open the terminal
- Run the command: `code --list-extensions | xargs -L 1 echo code --install-extension`
- Copy/save the output (maybe email to yourself) and paste this output in the terminal on your new mac to install the same extensions.

---

## Setup NPM
Update NPM to the latest version:

```bash
npm install -g npm
```

## Setup NVM
[Installing NVM](https://github.com/nvm-sh/nvm#installing-and-updating)  
[Troubleshooting NVM on MacOS](https://github.com/nvm-sh/nvm#troubleshooting-on-macos)  

```bash
touch ~/.zshrc
```

The following curl will add some lines to your .zshrc for loading nvm so you need .zshrc to exist first:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

See [Troubleshooting](https://github.com/nvm-sh/nvm#troubleshooting-on-macos) for common issues.

## Ruby, Bundle and Rails
The Mac should come with Ruby, Bundle and Rails pre-installed.

```bash
ruby -v

bundle -v

rails -v
```

## Setup Rbenv
[Rbenv](https://github.com/rbenv/rbenv) should have been installed by running the getting-started.sh in the previous section.

Use rbenv to pick a Ruby version for your application and guarantee that your development environment matches production.

```bash
rbenv init
```

Close your Terminal window and open a new one so your changes take effect.  
Run the rbenv doctor script to check rbenv is installed correctly:

```bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
```

## Setup Postgres
[Postgres](https://www.postgresql.org/) should be added by the getting-started.sh script.  
Setup a root user: `sudo -u YOUR_USERNAME createuser -s -w root`

## Setup Email
- The setup script should have install Front for you. Please set this up.

## Browser Extensions
We recommend downloading the [1Password (password manager)](https://chrome.google.com/webstore/detail/1password-%E2%80%93-password-mana/aeblfdkhhhdcdjpifhhbdiojplfjncoa) for chrome.

## Database Management
- The setup script should have installed Datagrip & Postico for all your SQL needs.

#### [Datagrip](https://www.jetbrains.com/datagrip/)
#### [Postico](https://eggerapps.at/postico/)

## SSH Keys / Cloning from GitHub
[Learn more about GitHub/SSH keys](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

> Once generated you should have a folder at ~/.ssh which will contain your id_rsa.pub which you can use to generate a key on GitHub

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Confirm all the defaults

```bash
git config --global user.name "Your Name"

git config --global user.email "your_email@example.com"

cat ~/.ssh/id_rsa.pub
```

Copy output to https://github.com/settings/keys

## Team Communication
We use Slack and Zoom to communicate, these should have been install by the script.  

## Slack Screen Recording
You may notice that you cannot share your screen properly on Slack. To fix that:

**System Preferences > Security & Privacy > Privacy > Screen Recording and then clicking the tick box next to slack**

You might need to restart Slack for the changes to take affect.

## Doctoc
Use [doctoc](https://github.com/thlorenz/doctoc) to autogenerate table of contents in markdown files.

```bash
npm install -g doctoc
```

#### Usage Examples
Default:

```bash
doctoc .
```
Multiple files:

```bash
doctoc README.md

doctoc CONTRIBUTING.md LICENSE.md
```
