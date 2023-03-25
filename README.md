# Please

Asking my box to perform various tasks

## Day 1

### 0) iTerm2

Either from https://iterm2.com/downloads.html or from corporate repository.

### 1) GitHub SSH Key

https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

### 2) Brew

https://github.com/Homebrew/install

### 3) Pyenv

https://github.com/pyenv/pyenv#homebrew-in-macos

### 4) Python

Install a Python version to serve as the global runtime. Make sure to use 
the latest one.

```console
eval "$(pyenv init -)"
```

```console
pyenv install 3.10.4
```

```console
pyenv global 3.10.4
```

### 5) Virtualenvwrapper

```console
brew install pyenv-virtualenvwrapper
```

### PyCharm

- **Install:** https://www.jetbrains.com/pycharm/download/#section=mac
- **Disable Telemetry:** https://www.jetbrains.com/help/pycharm/settings-usage-statistics.html

### VSCode

- **Install:** https://code.visualstudio.com/download
- **Disable Telemetry:** https://code.visualstudio.com/docs/getstarted/telemetry#_disable-telemetry-reporting

### 6) Prezto

```console
mkdir -p ~/dev/src/github.com/iliapolo
```

```console
cd ~/dev/src/github.com/iliapolo
```

```console
git clone --branch iliapolo --recursive git@github.com:iliapolo/prezto.git
```

```console
mkdir -p ~/dev/src/github.com/powerline
```

```console
cd ~/dev/src/github.com/powerline
```

```console
git clone https://github.com/powerline/fonts.git --depth=1
```

```console
cd fonts && ./install.sh
```

- **Enable powerline fonts in iTerm2:** https://apple.stackexchange.com/questions/368603/how-to-make-powerline-fonts-work-with-iterm2
- **Enable powerline fonts in VSCode:** https://code.visualstudio.com/docs/terminal/appearance#_powerline-symbols-and-nerd-fonts
  - *Source Code Pro for Powerline*

### 7) Please

```console
cd ~/dev/src/github.com/iliapolo
```

```console
git clone git@github.com:iliapolo/please.git
```

```console
cd please && pip install -e .
```
 
```console
please setup
```

### 8) Node

```console
brew install node@18
```

### 9) Yarn

https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable

## Day 2

```console
please --help
```

You got a new comp!
Development environment setup

- setup ssh key for github
- install prezto
- Install pyenv
- Install latest python version
- clone and install devbox
- Install PyCharm and configure default terminal command



1. Software Updates

2. Dock

    - Move dock to left 
    - Change icons to small
    - remove unnecessary icons

3. Spotlight

    - uncheck unnecessary stuff from the search options

9. Install CopyClip

    - Manual https://itunes.apple.com/us/app/copyclip-clipboard-history/id595191960?mt=12 
    (configure launch on boot in preferences)
    
11. Setup ssh key on github

12. install git and clone dev-environment

13. run setup-zsh.sh (make sure it installs powerline fonts and change font in iterm2 to Robot 
Mono Medium for Powerline 4pt)
    
14. Install IntelliJ

16. change iterm2 default profile command to zsh
