#!/bin/bash
clear
echo "credit to drapalyuk for creating this recovery"
sleep 2
cd dependancies
rm -f recovery.img 2>dev/null
cd ..
mkdir -p recoveries/amonra
cd recoveries/amonra
rm -f *.* 2>/dev/null
cd recoveries/amonra/
echo downloading...
wget --output-document=amonra.zip http://db.tt/pUPLPCrv
clear
echo extracting zip...
unzip *.zip
echo zip extracted
echo configuring extracted files...
mv *.img recovery.img
cd ..
cd ..
cp recoveries/amonra/recovery.img dependancies/
rmdir recoveries/amonra
echo "ready to flash Amonra to your phone"
read -p "Press any key to continue... " -n1 -s
scripts/flashrec.sh