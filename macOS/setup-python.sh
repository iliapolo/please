#!/usr/bin/env bash

####################################################################################################
# This script will install and configure python and necessary tools
#
####################################################################################################

function create_virtualenv {

    project=$1
    project_dir=${HOME}/dev/src/iliapolo/${project}

    if [ -d "${project_dir}" ]; then
        echo "Project ${project} already exists - OK"
    else
        echo "Creating virtualenv ${project}..."
        mkvirtualenv -a ${project_dir} -p python3 ${project}
    fi


}

echo "Installing Python3.7 with brew..."
brew install python

echo "Installing pip..."
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm -rf get-pip.py

echo "Installing virtualenvwrapper..."
pip install virtualenvwrapper

create_virtualenv pyci

create_virtualenv pyci-guinea-pig

create_virtualenv dictfile

create_virtualenv dev-environment

# TODO
# somehow, programatically add these lines to each virtualenv postactivate script
# autoload bashcompinit
# bashcompinit
# eval "$(_FOO_BAR_COMPLETE=source foo-bar)"