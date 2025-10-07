#!/bin/bash

set -ex

if [ ! -f "$HOME/.ssh/github" ]; then
  ssh-keygen -q -t ed25519 -N '' -C "sumorokov.k@gmail.com" -f $HOME/.ssh/github
fi
