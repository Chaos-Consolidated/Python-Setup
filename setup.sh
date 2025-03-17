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
mkdir src
mkdir docs
mkdir tests

# Setup main.py
echo -e "\"\"\"" > src/main.py
echo -e "   Title:" >> src/main.py
echo -e "   Description:" >> src/main.py
echo -e "\n" >> src/main.py    
echo -e "   Updated By: <NAME>" >> src/main.py
echo -e "   Date: <DATE>" >> src/main.py
echo -e "\n" >> src/main.py   
echo -e "   Algorithm steps:" >> src/main.py 
echo -e "\n" >> src/main.py   
echo -e "\"\"\"" >> src/main.py
echo -e "\n" >> src/main.py
echo -e "import os" >> src/main.py
echo -e "\n" >> src/main.py
echo -e "os.system('python -m pip install --upgrade pip')" >> src/main.py
echo -e "os.system('python -m pip install -r requirements.txt')" >> src/main.py

# Init pip installs
python3 src/main.py
clear
echo "Setup complete!"