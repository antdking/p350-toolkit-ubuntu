#!/bin/bash
clear
read -p "are you sure you want to download and install ClockworkMod 5.0.2.8?(y/n)" choice
case "$choice" in 
  y|Y ) scripts/cwm5ins.sh ;;
  n|N ) echo "returning to recovery chooser" ; sleep 2 ; scripts/recins.sh  ;;
  * ) echo "invalid option"; sleep 2 ; scripts/cwm5.sh;;
  esac
  echo "invalid choice"
  sleep 2
 scripts/cwm5.sh