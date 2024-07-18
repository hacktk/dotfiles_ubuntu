#!/bin/bash

set -eux

DOT_PATH="$HOME/repo/dotfiles_ubuntu"

if [ ! -d "$DOT_PATH" ]; then
    echo "Error: Directory $DOT_PATH does not exist."
    exit 1
fi
cd "$DOT_PATH" || exit 1

# dotfiles
for file in .??*; do
    [[ "$file" = ".git" ]] && continue
    ln -fvs "$DOT_PATH/$file" "$HOME/$file"
done

# git
mkdir -p "$HOME/.config"
ln -fvs "$DOT_PATH/git" "$HOME/.config/git"
mkdir -p "$HOME/repo/org"
