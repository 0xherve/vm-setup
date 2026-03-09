#!/usr/bin/env bash

set -euo pipefail
echo
echo "========== Setting up VM =========="

# Update system
echo
echo "----- Updating system -----"
sudo apt-get update
sudo apt-get upgrade -y
echo
echo

# Install dependencies
echo
echo "----- Installing essential dependencies -----"
sudo apt install -y git curl unzip build-essential vim
git config --global core.editor vim
echo
echo

# Installing Node and pnpm
echo
echo "----- Installing Node and pnpm -----"
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g pnpm pm2 
echo
echo

# Install Nginx
echo
echo "----- Installing Nginx -----"
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo
echo

# Install Solana Development tools (uncomment if needed)
# curl --proto '=https' --tlsv1.2 -sSfL https://solana-install.solana.workers.dev | bash
echo
source ~/.bashrc
echo

echo "========== Done! =========="
echo

echo "Node: $(node -v)"
echo "pnpm: $(pnpm -v)"
echo "Nginx: $(nginx -v 2>&1)"
echo