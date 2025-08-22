#!/bin/bash
# update-upgrade.sh - Update & clean Linux system

echo "🚀 Starting system update & upgrade..."
echo "======================================="

sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean

echo "✅ System update & cleanup done!"

