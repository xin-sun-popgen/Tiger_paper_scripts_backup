#!/bin/bash

for i in {human,cat,tiger,lion,cheetah,jaguar,puma}
do
    # makeblastdb -in ${i}.fa -parse_seqids -dbtype nucl -out ${i}.blastdb &
    # makembindex -input ${i}.blastdb -iformat blastdb -ws_hint 16 &
    blastn -db ../0-ref/${i}.blastdb -query ../0b-mt_ref/${i}_mt.fa -use_index true -outfmt 7 -evalue 0.0001 -out ${i} -word_size 16 -num_threads 10 &
done
