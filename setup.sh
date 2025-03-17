#!/bin/bash

# Update shell
apt update && apt upgrade -y
clear
echo "Shell updated..."

# Install/update python
apt install -y python-3.12.1
