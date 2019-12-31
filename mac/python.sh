#!/usr/bin/env bash

####################################################################################################
# This script will install and configure python and necessary tools
#
####################################################################################################

function create_virtualenv {

    project=$1
    project_dir=${HOME}/dev/src/github.com/iliapolo/${project}
    virtualenv_name=${project}@iliapolo@github.com
    virtualenv_dir=${HOME}/dev/virtualenvs/${virtualenv_name}

    if [ -d "${virtualenv_dir}" ]; then
        echo "Virtualenv ${virtualenv_name} already exists: OK"
    else
        echo "Creating virtualenv ${project}..."
        mkvirtualenv -a ${project_dir} -p python3 ${virtualenv_name}
    fi


}

echo "Installing pyenv..."
brew install pyenv

echo "Installing python 3.6.5"
pyenv install 3.6.5
pyenv global 3.6.5

echo "Installing penv-virtualenv..."
brew install pyenv-virtualenv

echo "Installing penv-virtualenvwrapper..."
brew install pyenv-virtualenvwrapper

create_virtualenv pyci

create_virtualenv pyci-guinea-pig

create_virtualenv dictfile

create_virtualenv dev-environment

# TODO
# somehow, programatically add these lines to each virtualenv postactivate script
# autoload bashcompinit
# bashcompinit
# eval "$(_FOO_BAR_COMPLETE=source foo-bar)"