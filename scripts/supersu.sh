#!/bin/bash
cd dependancies
cd root
if [ -e su.apk ]; 
then
rm -iv su.apk
fi
cp superuser.apk sup
mv sup/superuser.apk su.apk
cd ..
cd ..
scripts/root.sh
