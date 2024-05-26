#!/bin/bash

# 5/26/2024 By WROG208 \ N4ASS
# www.lonewolfsystem.org

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi


cp convert.py /usr/local/bin/convert.py
chmod +x /usr/local/bin/convert.py


if [[ -f /usr/local/bin/convert.py ]]; then
    echo "Installation successful!"


    rm -f ./install.sh
    rm -f ./convert.py

    echo "Cleanup completed!"
else
    echo "Installation failed. convert.py was not copied to /usr/local/bin."
fi
