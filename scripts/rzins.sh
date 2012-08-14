#!/bin/bash
clear
echo "credit to Keyur for making this recovery"
sleep 2
cd dependancies
rm -f recovery.img 2>dev/null
cd ..
mkdir -p recoveries/rz
cd recoveries/rz
rm -f *.* 2>/dev/null
cd recoveries/rz/
echo "downloading..."
wget --output-document=keyurrz.zip http://db.tt/iydRzmde
clear
echo "extracting zip..."
unzip *.zip
echo "zip extracted"
echo "configuring extracted files..."
mv *.img recovery.img
cd ..
cd ..
cp recoveries/rz/recovery.img dependancies/
rmdir recoveries/rz
echo "ready to flash RZ recovery to your phone"
read -p "Press any key to continue... " -n1 -s
scripts/flashrec.sh