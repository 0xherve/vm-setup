#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo
echo "========== Setting up dotfiles =========="

# Install tmux
echo
echo "----- Installing tmux -----"
sudo apt install -y tmux
echo
echo

# Git config
echo
echo "----- Configuring git -----"
git config --global user.name "Rwigema Herve"
git config --global user.email "imenarwigema@gmail.com"
git config --global init.defaultBranch main
git config --global core.editor vim
echo
echo

# Dotfiles
echo
echo "----- Copying dotfiles -----"
cp "$SCRIPT_DIR/.vimrc" ~/.vimrc
cp "$SCRIPT_DIR/.tmux.conf" ~/.tmux.conf
cp "$SCRIPT_DIR/.bash_aliases" ~/.bash_aliases
echo
echo

# Tmux plugin manager
echo
echo "----- Installing tmux plugin manager (TPM) -----"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo
echo

echo "========== Done! =========="
echo
echo "Run: tmux, then press \\ + I to install tmux plugins"
echo
