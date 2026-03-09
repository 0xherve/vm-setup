#!/usr/bin/env bash

set -euo pipefail
echo "========== Setting up VM =========="

# Update system
echo " --- Updating system ---"
sudo apt-get update
sudo apt-get upgrade -y

# Install dependencies
echo " --- Installing essential dependencies ---"
sudo apt install -y git curl unzip build-essential vim
git config --global core.editor vim

# Installing Node and pnpm
echo " --- Installing Node and pnpm ---"
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g pnpm pm2 

# Installing Bun
echo " --- Installing Bun ---"
curl -fsSL https://bun.sh/install | bash

# Install Nginx
echo " --- Installing Nginx ---"
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Install Solana Development tools (uncomment if needed)
# curl --proto '=https' --tlsv1.2 -sSfL https://solana-install.solana.workers.dev | bash

source ~/.bashrc

echo "========== Done! =========="
echo "Node: $(node -v) | pnpm: $(pnpm -v) | Nginx: $(nginx -v 2>&1)"