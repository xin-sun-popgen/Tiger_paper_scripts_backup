#!/bin/bash

XML=$1

rm -fr $XML*

for i in {1..4}
do
   #  cp $XML ./${i}-rep${i}
    cd ./${i}-rep${i}
    rm -fr $XML*
    cd ..
done
