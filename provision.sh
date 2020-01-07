#!/usr/bin/env bash

# Base OS update
/sbin/apt-get update > /dev/null 2>&1
/sbin/apt-get -y upgrade > /dev/null 2>&1
/sbin/apt-get -y install wget > /dev/null 2>&1

# Add Phidgets repos
wget -qO- http://www.phidgets.com/gpgkey/pubring.gpg | apt-key add - > /dev/null 2>&1
echo 'deb http://www.phidgets.com/debian stretch main' > /etc/apt/sources.list.d/phidgets.list > /dev/null 2>&1

# Install Phidgets libraries
apt-get update > /dev/null 2>&1
apt-get install libphidget22 > /dev/null 2>&1
