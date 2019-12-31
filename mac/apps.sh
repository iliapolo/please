#!/usr/bin/env bash

function install {

  app=$1

  echo "Installing ${app}..."
  output=$(brew cask install ${app})

  if [[ ${output} =~ "*already*" ]]; then
    echo "Already installed: ${}"
  else
    echo ${output}
  fi
}

install spectacle
install iterm2