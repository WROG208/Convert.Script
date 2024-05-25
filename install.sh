#!/bin/bash

# Installation directory
INSTALL_DIR="/usr/local/sbin"

# Check if running as root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 
  exit 1
fi

# Copy the script
cp convert.py "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/convert.py"

echo "Installation complete. The script has been installed to $INSTALL_DIR/convert.py"
