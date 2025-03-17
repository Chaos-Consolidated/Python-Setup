#!/bin/bash

# Update shell
apt update && apt full-upgrade -y
clear
echo "Shell updated..."

# Install/update python
apt install -y python
clear
pyversion=$(python --version)
echo "$pyversion installed!"
clear

# Install pip
apt install -y python3-pip
clear

# Make requirements file
touch requirements.txt

# Make project files