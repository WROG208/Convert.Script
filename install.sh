#!/bin/bash

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Copy the convert.py script to /usr/local/bin and make it executable
cp convert.py /usr/local/bin/convert.py
chmod +x /usr/local/bin/convert.py

# Verify if the file was copied successfully
if [[ -f /usr/local/bin/convert.py ]]; then
    echo "Installation successful!"

    # Delete the install.sh and convert.py from the current directory
    rm -f ./install.sh
    rm -f ./convert.py

    echo "Cleanup completed!"
else
    echo "Installation failed. convert.py was not copied to /usr/local/bin."
fi
