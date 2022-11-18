#!/bin/bash

bed=$1
gphocs_file=$2
# n_loci=$(wc -l $bed)

for i in $(cat $bed)
do
    cd $gphocs_file
    cd $i
    head -1 ${i}.philip | awk '{print "'${i}'",$1,$2}' OFS='\t' > ${i}.gphocs_loci
    tail -n +2 ${i}.philip >> ${i}.gphocs_loci
    echo '' >> ${i}.gphocs_loci
    cd ../..

done
