#!/bin/bash

# Ensure Pip is installed on the system
apt install python3-pip

# Install Ansible using Pip
pip install --user ansible

# Add the new binaries to the system Path
eval "echo  'export PATH="~/.local/bin:\$PATH"' >> '$HOME/.bashrc'"

# Source the new bash file
eval "source '$HOME/.bashrc'"