#!/usr/bin/env bash

####################################################################################################
#
# This script will install and configure zsh along side prezto configuration framework
#
#
####################################################################################################


prezto_url=git@github.com:iliapolo/prezto.git
src_dir=${HOME}/dev/src/iliapolo


# check the necessary directory exists
if [ ! -d "${src_dir}" ]; then
  echo "src directory does not exist, please create it manually or by running 'setup-directories.sh' and try again"
  exit 1
fi

# check we have git installed
git_installed=$(which git)
if [ ! "${git_installed}" -eq 0 ]; then
  echo "git is not installed, please install it manually or by running 'setup-git.sh' and try again"
  exit 1
fi

echo "Cloning prezto from ${prezto_url} to ${src_dir}/prezto"
git clone --recursive ${prezto_url} ${src_dir}/prezto

echo "Creating symbolic links"
ln -s ${HOME}/dev/src/iliapolo/prezto ${HOME}/.zprezto
setopt EXTENDED_GLOB
for rcfile in "${$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${$HOME}/.${rcfile:t}"
done

echo "Done, open a new terminal window to see the affects"
