#!/bin/bash
clear
cd dependancies
echo "flashing recovery now..."
adb -d wait-for-device shell "su -c 'rm sdcard/recovery.img'"
adb -d wait-for-device shell "su -c 'rm sdcard/flash_image'"
adb -d wait-for-device push recovery.img /sdcard/
adb -d wait-for-device push flash_image /sdcard/
adb -d wait-for-device shell "su -c 'mount -o remount,rw -t yaffs2 /dev/block/mtdblock1 /system'"
adb -d wait-for-device shell "su -c 'cat /sdcard/flash_image > /system/bin/flash_image'"
adb -d wait-for-device shell "su -c 'chmod 755 /system/bin/flash_image'"
adb -d wait-for-device shell "su -c 'sync'"
adb -d wait-for-device shell "su -c 'flash_image recovery /sdcard/recovery.img'"
adb -d wait-for-device shell "su -c 'sync'"

echo "flashing now finished. rebooting to recovery.."
read -p "press any key to continue" -n1 -s
echo "rebooting..."
adb -d wait-for-device shell "su -c 'reboot recovery'"
rm -f recovery.img 2>dev/null
cd ..
echo "your device has now rebooted"
echo "thank you for using antdking's recovery installer"
sleep 2
echo "returning to menu..."
sleep 2
scripts/menu