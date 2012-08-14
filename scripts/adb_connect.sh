#!/bin/bash
clear
cd dependancies
echo
echo testing...
sudo adb start-server
sudo adb devices
cd ..
scripts/adb_confirm.sh
