#!/bin/bash
# @File: build.sh
# @Description: packjs
#
# @Author:  Pury <szwzjx@gmail.com>
# @Version: 0.0.1
# @Date:    2016-4-16
#
# Copyright © 2015 - 2016 pury.org.   
# All rights reserved.

cp files.txt target

sed -i 's/\\/\//g' target

cat $(cat target) >build/linux/package-debug.js

rm target

currentTime=`date +%Y%m%d%H%M%S`

version=$currentTime

show="linux version: $version"

echo -e "\nconsole.log(\"$show\");" >> build/linux/package-debug.js

uglifyjs build/linux/package-debug.js -m > build/linux/package-debug-min.js

echo $show


