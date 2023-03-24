#!/bin/zsh

set -e

####################################################################################################
# This script will install and configure zsh along side prezto configuration framework
#
####################################################################################################


prezto_url=git@github.com:iliapolo/prezto.git
src_dir=${HOME}/dev/src/github.com/iliapolo

# check the necessary directory exists
if [ ! -d "${src_dir}" ]; then
  echo "src directory does not exist, please create it manually or by running 'setup-directories.sh' and try again"
  exit 1
fi

# check we have git installed
git_installed=$(which git)
if [ ! -f $(which git) ]; then
  echo "git is not installed, please install it manually or by running 'setup-git.sh' and try again"
  exit 1
fi

if [ ! -d ${src_dir}/prezto ]; then
  echo "Cloning prezto from ${prezto_url} to ${src_dir}/prezto"
  git clone --recursive ${prezto_url} ${src_dir}/prezto
fi

echo "Creating symbolic links"
ln -s ${HOME}/dev/src/github.com/iliapolo/prezto ${HOME}/.zprezto
setopt EXTENDED_GLOB
for rcfile in $HOME/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "$HOME/.${rcfile:t}"
done

echo "Done, open a new terminal window to see the affects"


# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# enable powerline on vscode: "terminal.integrated.fontFamily": "Source Code Pro for Powerline"
# follow https://apple.stackexchange.com/questions/368603/how-to-make-powerline-fonts-work-with-iterm2
