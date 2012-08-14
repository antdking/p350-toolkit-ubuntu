#!/bin/bash
echo "before I root your device, you need to choose between"
echo "superuser and superSU"
sleep 2
echo "you will have root access whatever you choose"
echo "[1] Superuser"
echo "[2] SuperSU"
read -p "type here..." choice
case "$choice" in 
  1) scripts/superuser.sh;;
  2) scripts/supersu.sh;;
  * ) echo "invalid option"; sleep 2 ; scripts/beforeroot.sh;;
  esac
  echo invalid choice
  sleep 2
 scripts/beforeroot.sh