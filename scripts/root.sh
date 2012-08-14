#!/bin/bash
clear
echo
echo "hello and welcome to my rooting tool"
sleep 2
echo hopefully I can root your device without any problems
sleep 2
echo WARNING!
echo rooting your device VOIDS your warranty
echo do this at your own risk
sleep 2
cd dependancies
sudo adb start-server
sudo adb devices
echo press ctrl + c to close
read -p "Press any key to continue... " -n1 -s

echo editing config file
adb -d wait-for-device shell "echo 1 > /data/local/lge_adb.conf"
echo your device will now be rebooted
read -p "press an key to reboot your device " -n1 -s
echo after your device has rebooted, please enable usb debugging
echo settings>applications>development
adb -d wait-for-device reboot
read -p "press any key after usb debugging is enabled " -n1 -s
adb devices
echo pushing rooting script
adb -d wait-for-device push root/psneuter /data/local/tmp
echo running script
adb -d wait-for-device shell "cd /data/local/tmp ; chmod 777 psneuter ; ./psneuter"
echo script run. killing server
sudo adb kill-server
sleep 2
sudo adb start-server
sudo adb devices
echo mounting system as re-writable
adb -d wait-for-device shell "mount -o remount,rw -t rfs /dev/block/st19 /system"
echo making root permanant
sleep 2
adb -d wait-for-device push root/busybox /system/bin
adb -d wait-for-device push root/su /system/bin
adb -d wait-for-device install root/su.apk
sleep 2
adb -d wait-for-device shell "chmod 6755 /system/bin/busybox"
adb -d wait-for-device shell "chmod 6755 /system/bin/su"
adb -d wait-for-device shell "su -c /system/bin/busybox --install -s /system/bbin"
adb -d wait-for-device shell "mount -o remount,ro -t rfs /dev/block/st19 /system"
adb -d wait-for-device install root/RootCheckPro.apk
echo device must reboot
read -p "press an key to reboot your device " -n1 -s
echo rebooting...
adb -d wait-for-device reboot
read -p "press any key after device is loaded " -n1 -s
cd ..
echo "please open the app "root check pro" and verify root access"
sleep 2
echo "if your device isn't rooted please contact me and close this window"
sleep 2
echo "returning to main menu. I recommend you install recovery ;)"
sleep 2
scripts/menu.sh