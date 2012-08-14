#!/bin/bash
clear
sleep 2
cd dependancies
rm -f recovery.img 2>dev/null
cd ..
mkdir -p recoveries/stockrec
cd recoveries/stockrec
rm -f *.* 2>/dev/null
cd recoveries/stockrec/
echo "downloading..."
wget --output-document=stockrec.zip http://db.tt/pNHO1TX9
clear
echo "extracting zip..."
unzip *.zip
echo "zip extracted"
echo "configuring extracted files..."
mv *.img recovery.img
cd ..
cd ..
cp recoveries/stockrec/recovery.img dependancies/
rmdir recoveries/stockrec
echo "ready to flash stock recovery to your phone"
read -p "Press any key to continue... " -n1 -s
scripts/flashrec.sh