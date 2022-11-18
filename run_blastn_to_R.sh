#!/bin/bash

for i in {human,cat,cat_80,tiger,lion,cheetah,jaguar,puma}
do
    # makeblastdb -in ${i}.fa -parse_seqids -dbtype nucl -out ${i}.blastdb &
    # makembindex -input ${i}.blastdb -iformat blastdb -ws_hint 16 &
    grep -v '#' ${i} | awk '{print $2,$3,$4,$7,$8,$9,$10,"'${i}'"}' OFS='\t' > ${i}_for_R.txt
done
