#!/bin/bash
echo
echo this tool relies heavily on adb
sleep 2
read -p "is your device connected?(y/n)" choice
case "$choice" in 
  y|Y ) echo "connecting to device via adb"; scripts/add_connect.sh ;;
  n|N ) read -p "press any key when device is plugged in.." -n1 -s ; scripts/adb_connect.sh ;;
  * ) echo "invalid option"; sleep 2 ; scripts/connect.sh;;
  esac
  echo invalid choice
  sleep 2
 scripts/connect.sh