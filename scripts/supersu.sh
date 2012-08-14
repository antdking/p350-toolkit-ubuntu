#!/bin/bash
cd dependancies
cd root
if [ -e su.apk ]; 
then
rm -iv su.apk
fi
cp supersu.apk sup
mv sup/supersu.apk su.apk
cd ..
cd ..
scripts/root.sh
