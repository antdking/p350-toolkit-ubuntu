#!/bin/bash
clear
echo "credit to Ron Gokhle for making this recovery"
sleep 2
cd dependancies
rm -f recovery.img 2>dev/null
cd ..
mkdir -p recoveries/cwm6
cd recoveries/cwm6
rm -f *.* 2>/dev/null
cd recoveries/cwm6/
echo downloading...
wget --output-document=roncwm.zip http://db.tt/ie5q24g2
clear
echo extracting zip...
unzip *.zip
echo zip extracted
echo configuring extracted files...
mv *.img recovery.img
cd ..
cd ..
cp recoveries/cwm6/recovery.img dependancies/
rmdir recoveries/cwm6
echo "ready to flash ClockworkMod 6 to your phone"
read -p "Press any key to continue... " -n1 -s
scripts/flashrec.sh