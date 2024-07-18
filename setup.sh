#!/bin/bash

set -eux

# repository download
DOT_PATH="$HOME/repo/dotfiles_ubuntu"
if [ ! -d "$DOT_PATH" ]; then
    git clone git@github.com:hacktk/dotfiles_ubuntu.git "$DOT_PATH"
else
    echo "$DOT_PATH already downloaded. Updating..."
    cd "$DOT_PATH"
    git stash
    git checkout main
    git pull origin main
    echo
fi
cd "$DOT_PATH"

# install packages
./scripts/install.sh
echo

# deploy dotfiles
./scripts/deploy.sh
echo

# configure environments
./scripts/configure.sh
echo

echo "setup finished."
