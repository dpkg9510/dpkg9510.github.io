#!/bin/sh
apt-ftparchive packages ./ > ./Packages
sed -i -e '/^SHA/d' ./Packages
bzip2 -c9k ./Packages > ./Packages.bz2
printf "Origin: dpkg9510's Repo\nLabel: dpkg9510\nSuite: stable\nVersion: 1.0\nCodename: dpkg9510\nArchitecture: iphoneos-arm\nComponents: main\nDescription: dpkg9510's Tweaks\nMD5Sum:\n "$(cat ./Packages | md5sum | cut -d ' ' -f 1)" "$(stat ./Packages --printf="%s")" Packages\n "$(cat ./Packages.bz2 | md5sum | cut -d ' ' -f 1)" "$(stat ./Packages.bz2 --printf="%s")" Packages.bz2\n" >Release;
exit 0