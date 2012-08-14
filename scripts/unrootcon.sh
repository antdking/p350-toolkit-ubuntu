#!/bin/bash
clear
echo "hello and welcome to antdking's unrooting tool"
sleep 2
echo "unrooting your phone is only recommended on stock roms"
sleep 2
echo "if you unroot your phone that isn't on a stock rom and"
echo "are unable to root your phone again, then that is your"
echo "own fault"
sleep 2
read -p "do you wish to continue?(y/n)" choice
case "$choice" in 
  y|Y ) script/unroot.sh ;;
  n|N ) echo "returning to menu..." ; sleep 1 ; scripts/menu.sh;;
  * ) echo "invalid option"; sleep 2 ; scripts/unrootcon.sh;;
  esac
  echo invalid choice
  sleep 2
 scripts/unrootcon.sh