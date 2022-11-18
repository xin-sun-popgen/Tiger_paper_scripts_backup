#!/bin/bash

for i in {pti217,pti220,NGH2}
do
    gatk -T HaplotypeCaller \
        -R $TIGER_WG \
        -I /share/users/sunx/1-South_China_Tiger/2-holotype/0-AMO_sum/0-map/2-map/2-wg/${i}_merge_rg.bam \
        -ERC GVCF \
        -o ${i}.g.vcf \
        -nct 20 &
done
