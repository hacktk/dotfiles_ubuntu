#!/bin/bash

set -eux

DOT_PATH="$HOME/repo/dotfiles_ubuntu"
ln -fvs "$DOT_PATH/ssh/authorized_keys" "$HOME/.ssh/authorized_keys"
