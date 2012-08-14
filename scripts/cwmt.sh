#!/bin/bash
clear
read -p "are you sure you want to download and install ClockworkMod touch?(y/n)" choice
case "$choice" in 
  y|Y ) scripts/cwmtins.sh ;;
  n|N ) echo "returning to recovery chooser" ; sleep 2 ; scripts/recins.sh  ;;
  * ) echo "invalid option"; sleep 2 ; scripts/cwmt.sh;;
  esac
  echo invalid choice
  sleep 2
 scripts/cwmt.sh