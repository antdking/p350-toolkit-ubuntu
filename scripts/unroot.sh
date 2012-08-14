#!/bin/bash
clear
echo "please ensure that usb debugging is enabled"
read -p "press any key to continue" -n1 -s
echo "unrooting device..."
cd dependancies
sudo adb start-server
sudo adb devices
echo "uninstalling superuser..."
adb -d wait-for-device uninstall com.noshufou.android.su
echo "uninstalling superSU if installed before..."
adb -d wait-for-device uninstall eu.chainfire.supersu
echo "mounting system as rw..."
adb -d wait-for-devices shell "mount -o remount,rw -t rfs /dev/block/st19 /system"
adb -d wait-for-device shell "cd /system/bin ; rm busybox ; rm su"
adb -d wait-for-device shell "cd system/xbin ; rm busybox ; rm su"
echo "mounting system as read only..."
adb -d wait-for-devices shell "mount -o remount,ro -t rfs /dev/block/st19 /system"
echo "installing RootCheckPro..."
adb -d wait-for-device install root/RootCheckPro.apk
echo "your device should now be unrooted"
echo rebooting your device...
read -p "press any key to continue" -n1 -s
adb -d wait-for-device reboot
echo "to check your device is unrooted, run root checker"
echo "if you still have root access, contact me"
sleep 2
echo "returning to menu..."
sleep 2
scripts/menu.sh