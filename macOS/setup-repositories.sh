#!/usr/bin/env bash

function clone {

    repo=$1
    repo_dir=${HOME}/dev/src/iliapolo/${repo}

    if [ -d "${repo_dir}" ]; then
        echo "Repository ${repo} already exists - OK"
    else
        echo "Cloning ${repo}..."
        git clone git@github.com:iliapolo/${repo}.git ${repo_dir}
    fi

}

clone pyci.git

clone pyci-guinea-pig

clone dictfile

clone dev-environment
