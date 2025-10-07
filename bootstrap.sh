#!/bin/bash

set -ex

# Generate SSH key for GitHub
if [ ! -f "$HOME/.ssh/github" ]; then
  ssh-keygen -q -t ed25519 -N '' -C "sumorokov.k@gmail.com" -f $HOME/.ssh/github
fi

# Prepare .env
if [ ! -f "$HOME/.env" ]; then
  touch $HOME/.env
fi
