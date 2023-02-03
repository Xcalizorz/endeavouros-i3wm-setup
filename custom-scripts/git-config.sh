#!/bin/bash
set -euxo pipefail

git config --global user.name ${1:-'xcalizorz'}

git config --global core.editor vim
git config --global init.defaultBranch main
git config --global push.autoSetupRemote true

if [ -z "${2}" ]; then
    echo "Please add your email via git config --global user.email"
else
    git config --global user.email $2
fi
