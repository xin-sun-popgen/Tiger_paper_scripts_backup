#!/bin/bash

XML=$1

for i in {1..4}
do
    mkdir ${i}-rep${i}
    cp $XML ./${i}-rep${i}
    cd ./${i}-rep${i}
    beast2 $XML > run_log_${XML}.log 2>&1 &
    cd ..
done
