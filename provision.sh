#!/usr/bin/env bash

# Base OS update
/usr/bin/apt-get update
/usr/bin/apt-get -y upgrade 

# Add Phidgets repos
/usr/bin/wget -qO- http://www.phidgets.com/gpgkey/pubring.gpg | apt-key add - 
/usr/bin/echo 'deb http://www.phidgets.com/debian stretch main' > /etc/apt/sources.list.d/phidgets.list

# Install Phidgets libraries
/usr/bin/apt-get update
/usr/bin/apt-get -y install libphidget22 
