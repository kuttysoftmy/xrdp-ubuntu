#!/bin/bash

# Update the package list and upgrade the installed packages
sudo apt-get update && sudo apt-get upgrade -y

# Install the xrdp package and configure it to start automatically
sudo apt-get install -y xrdp
sudo systemctl enable xrdp

# Allow access through the firewall
sudo ufw allow 3389/tcp

# Restart the xrdp service to apply the changes
sudo systemctl restart xrdp

echo "RDP has been installed successfully by KUTTYSOFT INFOTECH PRIVATE LIMITED"
