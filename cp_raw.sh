#!/bin/bash

for i in {"2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","3-1","3-2","3-3","3-4","3-5","3-6","4-1","4-2","4-3"}
do
    cp /share/seqdata/South_China_Tiger_Pleistocene_Tiger/DK_seeq/C10117110155/pool-${i}/pool-${i}_R1.fq.gz ./
    cp /share/seqdata/South_China_Tiger_Pleistocene_Tiger/DK_seeq/C10117110155/pool-${i}/pool-${i}_R2.fq.gz ./
done
