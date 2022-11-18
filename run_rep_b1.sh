#!/bin/bash

XML=$1

for i in {1..4}
do
    cp $XML ./${i}-rep${i}
    cd ./${i}-rep${i}
    beast $XML &
    cd ..
done
