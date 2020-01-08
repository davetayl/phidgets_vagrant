#!/usr/bin/env bash

# Set system name
hostnamectl set-hostname phidgetdev > /dev/null 2>&1
/bin/sed -i "s/debianvb/phidgetdev/g" /etc/hosts > /dev/null 2>&1
echo "Name set...(Pow!)"

# Base OS update
/usr/bin/apt-get update > /dev/null 2>&1
/usr/bin/apt-get -y upgrade > /dev/null 2>&1
echo "OS Updated...(Wak!)"

# Add Phidgets repos
/usr/bin/wget -qO- http://www.phidgets.com/gpgkey/pubring.gpg | apt-key add - > /dev/null 2>&1
/bin/echo 'deb http://www.phidgets.com/debian stretch main' > /etc/apt/sources.list.d/phidgets.list > /dev/null 2>&1

# Install Phidgets libraries
/usr/bin/apt-get update > /dev/null 2>&1
/usr/bin/apt-get -y install libphidget22 > /dev/null 2>&1
echo "Phidgets installed...(Kerthewie!)"
echo "----------------------------"
echo "Sweet bro, you're up as bro!"
echo "----------------------------"
