#!/bin/bash
clear
read -p "are you sure you want to download and install RZ Recovery?(y/n)" choice
case "$choice" in 
  y|Y ) scripts/rzins.sh ;;
  n|N ) echo "returning to recovery chooser" ; sleep 2 ; scripts/recins.sh  ;;
  * ) echo "invalid option"; sleep 2 ; scripts/rz.sh;;
  esac
  echo invalid choice
  sleep 2
 scripts/rz.sh