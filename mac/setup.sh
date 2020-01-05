#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

${script_dir}/setup-defaults.sh

${script_dir}/setup-xcode.sh

${script_dir}/setup-brew.sh

${script_dir}/setup-directories.sh

${script_dir}/setup-repositories.sh

${script_dir}/setup-python.sh

${script_dir}/setup-zsh.sh

${script_dir}/setup-apps.sh


brew cask install visual-studio-code

brew install task

brew install gnupg

brew install wget

brew install rbenv

brew tap AdoptOpenJDK/openjdk

brew cask install adoptopenjdk8

java installed under /Library/Java/JavaVirtualMachines/

enable inifnite scroll in iterm

vscode extenstions:

- Docker
- TSlint
- Jest runner
- Python