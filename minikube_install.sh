#!/bin/bash
# install-minikube.sh - Script to install Minikube on Ubuntu 22.04

set -e

echo "🚀 Starting Minikube installation on Ubuntu 22.04"
echo "================================================"

# Step 1: Update system packages
echo "📦 Updating system..."
sudo apt update -y && sudo apt upgrade -y

# Step 2: Install required dependencies
echo "🔧 Installing required packages..."
sudo apt install -y curl wget apt-transport-https virtualbox virtualbox-ext-pack

# Step 3: Download and install Minikube
echo "⬇️ Downloading Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

echo "📂 Installing Minikube..."
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Step 4: Install kubectl (Kubernetes CLI)
echo "⬇️ Downloading kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "📂 Installing kubectl..."
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Step 5: Verify installation
echo "✅ Verifying installation..."
minikube version
kubectl version --client

# Step 6: Start Minikube
echo "🚀 Starting Minikube cluster..."
minikube start --driver=virtualbox

echo "🎉 Minikube installation completed successfully!"
echo "👉 You can check the status using: minikube status"

