#!/bin/bash
clear
echo
echo "the unzip tool is required for the next stage"
echo "this will only install if you do not have it"
echo "or it is outdated"
read -p "Press any key to continue... " -n1 -s
sudo apt-get install zip
sudo apt-get install unzip
echo "you now have unzip installed"
echo "continuing..."
scripts/recins.sh