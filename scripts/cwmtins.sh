#!/bin/bash
clear
echo "credit to Vivek for making this recovery"
sleep 2
cd dependancies
rm -f recovery.img 2>dev/null
cd ..
mkdir -p recoveries/cwmt
cd recoveries/cwmt
rm -f *.* 2>/dev/null
cd recoveries/cwmt/
echo downloading...
wget --output-document=vivekcwmt.zip http://db.tt/X8NNpwPt
clear
echo extracting zip...
unzip *.zip
echo zip extracted
echo configuring extracted files...
mv *.img recovery.img
cd ..
cd ..
cp recoveries/cwmt/recovery.img dependancies/
rmdir recoveries/cwmt
echo "ready to flash ClockworkMod touch to your phone"
read -p "Press any key to continue... " -n1 -s
scripts/flashrec.sh