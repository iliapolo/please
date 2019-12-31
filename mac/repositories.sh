#!/usr/bin/env bash

function clone {

    repo=$1
    repo_dir=${HOME}/dev/src/github.com/iliapolo/${repo}

    if [ -d "${repo_dir}" ]; then
        echo "Repository ${repo} already exists - OK"
    else
        echo "Cloning ${repo}..."
        git clone git@github.com:iliapolo/${repo}.git ${repo_dir}
        cd ${repo_dir}
        git config user.name iliapolo
        git config user.email eli.polonsky@gmail.com
    fi

}

clone pyci

clone pyci-guinea-pig

clone dictfile

clone dev-environment
