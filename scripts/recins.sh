#!/bin/bash
clear
echo "hello and welcome to antdking's recovery installer"
echo "your phone MUST be rooted before you proceed"
echo "if it is not rooted please return to the menu"
echo "and root your device"
sleep 2
echo "please choose a recovery you want to use"
echo "[1] Drapalyuk's AmonRA 2.2.1"
echo "[2] Keyur's ClockworkMod 5.0.2.8"
echo "[3] Keyur's RZ Recovery"
echo "[4] Vivek's CWM touch Recovery 5.0.2.7"
echo "[5] Ron's ClockworkMod 6.0.1.0"
echo "[6] Stock Recovery (only flash if you have stock android and do not"
echo "want a custom recovery anymore)"
echo "[7] return to menu"
echo "[X] exit"

read -p "type your choice here..." choice
case "$choice" in 
  1) script/amonra.sh ;;
  2) script/cwm5.sh ;;
  3) script/rz.sh ;;
  4) script/cwmt.sh ;;
  5) script/cwm6.sh ;;
  6) script/strec.sh ;;
  7) script/menu.sh ;;
  x|X)echo exiting... ; sleep 2 ; exit ;;
  esac
  echo invalid choice
  sleep 2
 scripts/recins.sh