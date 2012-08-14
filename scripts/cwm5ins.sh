#!/bin/bash
clear
echo "credit to Keyur for making this recovery"
sleep 2
cd dependancies
rm -f recovery.img 2>dev/null
cd ..
mkdir -p recoveries/cwm5
cd recoveries/cwm5
rm -f *.* 2>/dev/null
cd recoveries/cwm5/
echo downloading...
wget --output-document=keyurcwm.zip http://db.tt/wKJ78iXr
clear
echo extracting zip...
unzip *.zip
echo zip extracted
echo configuring extracted files...
mv *.img recovery.img
cd ..
cd ..
cp recoveries/cwm5/recovery.img dependancies/
rmdir recoveries/cwm5
echo "ready to flash ClockworkMod 5 to your phone"
read -p "Press any key to continue... " -n1 -s
scripts/flashrec.sh