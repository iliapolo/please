#!/usr/bin/env bash

####################################################################################################
#
# This script will install and configure python and necessary tools
#
####################################################################################################

# create a symlink inside the different virtualenvs for the pip config file
ln -s ${HOME}/dev/src/iliapolo/dev-environment/macOS/config/pip/pip.conf /Users/elip/.virtualenvs/dictfile/pip.conf
ln -s ${HOME}/dev/src/iliapolo/dev-environment/macOS/config/pip/pip.conf /Users/elip/.virtualenvs/dictfile-py3/pip.conf
ln -s ${HOME}/dev/src/iliapolo/dev-environment/macOS/config/pip/pip.conf /Users/elip/.virtualenvs/pyci/pip.conf
ln -s ${HOME}/dev/src/iliapolo/dev-environment/macOS/config/pip/pip.conf /Users/elip/.virtualenvs/pyci-py3/pip.conf
ln -s ${HOME}/dev/src/iliapolo/dev-environment/macOS/config/pip/pip.conf /Users/elip/.virtualenvs/pyci-guinea-pig/pip.conf

# TODO
# somehow, programatically add these lines to each virtualenv postactivate script
# autoload bashcompinit
# bashcompinit
# eval "$(_FOO_BAR_COMPLETE=source foo-bar)"