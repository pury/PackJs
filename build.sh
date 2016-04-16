#!/bin/bash

cp files.txt target

sed -i 's/\\/\//g' target

cat $(cat target) >build/linux/package-debug.js

rm target

currentTime=`date +%Y%m%d%H%M%S`

version=$currentTime

show="linux version: $version"

echo -e "\nconsole.log(\"$show\");" >> build/linux/package-debug.js

echo $show

#uglifyjs build/cantkraw-debug.js -m > build/cantkraw.js
#cat $(cat files.txt) >build/linux/package-debug.js
