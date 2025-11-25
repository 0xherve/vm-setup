#!/usr/bin/bash

set -e
echo " ---------- Setting up VM..."

# Update system
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install -y git curl build-essential ripgrep fd-find unzip

# Install Neovim
echo "Installing Neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Install LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Install Solana Development tools
curl --proto '=https' --tlsv1.2 -sSfL https://solana-install.solana.workers.dev | bash

source ~/.bashrc

echo " ---------- Done! "
