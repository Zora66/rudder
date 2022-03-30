#!/bin/bash
clear

echo "=================="
echo "ADDING GPG KEY"
echo "=================="
wget --quiet -O /etc/apt/trusted.gpg.d/rudder_apt_key.gpg "https://repository.rudder.io/apt/rudder_apt_key.gpg"

sleep 1
clear

echo "==========================="
echo "ADDING REPO TO SOURCE LIST"
echo "==========================="
echo "deb http://repository.rudder.io/apt/7.0/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/rudder.list

sleep 1
clear

echo "==========================="
echo "RUNNING APT-GET UPDATE"
echo "==========================="
apt-get update


sleep 1
clear

echo "==========================="
echo "INSTALLING RUDDER AGENT"
echo "==========================="
apt-get install rudder-agent
