# vm-setup

This repository keeps a bash script to set up a Linux Virtual Machine (VM) after creating it with my essential terminal tools.

## What's included

- System update & upgrade
- Essential tools: `git`, `curl`, `unzip`, `build-essential`, `vim`
- Node.js 24 LTS + `pnpm` + `pm2`
- Nginx (enabled & started on boot)
- Vim set as the default git editor

## Usage

To use this script, copy and enter the following command in your terminal:
```bash
curl -fsSL terminal.polimath.workers.dev | bash
```

## Requirements
- Fresh Ubuntu installation (Recommended: 22.04 LTS)
- Internet connection
- sudo privileges

> This script is personal and is customized to bring my preferred tools.
