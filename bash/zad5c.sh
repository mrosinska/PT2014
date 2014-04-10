#!/bin/bash

if [ $# < 1 ]; then
echo 'Za malo parametrow'
else
for nazwa in `ls $1`; do
n=`echo "$nazwa/" | tr 'A-Z' 'a-z'`
n=${n%/}
if [ $nazwa != $n ]; then
mv "$nazwa" "$n"
fi
done
fi
