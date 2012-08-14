#!/bin/bash
read -p "does your device show up?(y/n)" choice
case "$choice" in 
  y|Y ) echo "good :)";sleep 2 ; scripts/menu.sh ;;
  n|N ) echo "I do not know what went wrong. Sorry I can't help :/ "; exit;;
  * ) echo "invalid option"; sleep 2 ; scripts/adb_confirm.sh;;
  esac
  echo "invalid choice"
  sleep 2
 scripts/adb_confirm.sh