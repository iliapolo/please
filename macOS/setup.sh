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
