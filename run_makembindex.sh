#!/bin/bash

for i in {human,cat,tiger,lion,cheetah,jaguar,puma}
do
    # makeblastdb -in ${i}.fa -parse_seqids -dbtype nucl -out ${i}.blastdb &
    makembindex -input ${i}.blastdb -iformat blastdb -ws_hint 16 &
done
