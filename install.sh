#!/bin/bash

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` first option should be: [server] to symlink server dotfiles or [local] for local machine. (no default value)"
  exit 0
fi

export DOTFILES_DIR

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# # Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Create the symlinks
case $1 in
  "local")
    # # Bunch of symlinks
    ln -sfv "$DOTFILES_DIR/.bash_profile" ~
    ln -sfv "$DOTFILES_DIR/.gitconfig" ~
    ln -sfv "$DOTFILES_DIR/.gitignore" ~
    ln -sfv "$DOTFILES_DIR/.zshrc" ~
    ;;
  "server")
    # # Bunch of symlinks
    ln -sfv "$DOTFILES_DIR/.bash_profile_server" ~/.bash_profile
    ln -sfv "$DOTFILES_DIR/.gitconfig" ~
    ln -sfv "$DOTFILES_DIR/.gitignore" ~
    ;;
  *)
    echo "Please use [server] or [local] option, use -h for more informations"
    exit 0
    ;;
esac


source ~/.bash_profile
