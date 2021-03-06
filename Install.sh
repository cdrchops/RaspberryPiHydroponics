#!/bin/bash
# Made by Multipixelone
# Install Script
if [ "$EUID" -ne 0 ]
  then echo "Sorry, I need root access. Please run as root or with sudo ;)"
  exit
fi

read -r -p "Proceed with Install? [y/n]"
echo
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    cd ~/
    git clone https://github.com/Multipixelone/RaspberryPiHydroponics/
    cd RaspberryPiHydroponics
    apt-get update
    apt-get --yes upgrade
    apt-get install --yes rpi.gpio python python-pip
    pip install schedule
    reboot
else
    echo Install Cancelled... Exiting
    exit 0
fi
