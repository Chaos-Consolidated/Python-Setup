#!/bin/bash

# Update shell
apt update && apt full-upgrade -y
clear
echo "Shell updated..."

# Install/update python
apt install -y python3.12
