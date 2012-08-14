#!/bin/bash
clear
read -p "are you sure you want to download and install AmonRA?(y/n)" choice
case "$choice" in 
  y|Y ) scripts/amonrains.sh ;;
  n|N ) echo "returning to recovery chooser" ; sleep 2 ; scripts/recins.sh  ;;
  * ) echo "invalid option"; sleep 2 ; scripts/amonra.sh;;
  esac
  echo invalid choice
  sleep 2
 scripts/amonra.sh