#!/usr/bin/env bash

# Set system name
hostnamectl set-hostname phidgetdev
/bin/sed -i "s/debian-9rc1-i386/phidgetdev/g" /etc/hosts
echo "Name set..."
echo ""
echo ""
echo ""

# Base OS update
/usr/bin/apt-get update > /dev/null 2>&1
# /usr/bin/apt-get -y upgrade
echo "OS Updated..."
echo ""
echo ""
echo ""

# Add Phidgets repos
/usr/bin/wget -qO- http://www.phidgets.com/gpgkey/pubring.gpg | apt-key add - > /dev/null 2>&1
/bin/echo 'deb http://www.phidgets.com/debian stretch main' > /etc/apt/sources.list.d/phidgets.list > /dev/null 2>&1

# Install Phidgets libraries
/usr/bin/apt-get update > /dev/null 2>&1
/usr/bin/apt-get -y install libphidget22 > /dev/null 2>&1
echo "Phidgets installed..."
echo ""
echo ""
echo ""
echo "----------------------------"
echo "Sweet bro, you're up as bro!"
echo "----------------------------"
