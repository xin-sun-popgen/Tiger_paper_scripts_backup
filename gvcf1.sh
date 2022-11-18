#!/bin/bash

WORK_DIR=/share/seqdata/South_China_Tiger/modern_tiger
BAM_DIR=/share/seqdata/South_China_Tiger/modern_tiger/5.Tiger_aln_unique
OUT_DIR=/share/seqdata/South_China_Tiger/modern_tiger/1-gvcf

cd $WORK_DIR
for i in {GZXJ0003,pti096,pti103,pti105,pti177,pti183,pti184,pti185,pti186,pti208}
do
    gatk -T HaplotypeCaller -R $TIGER_WG \
	-I $BAM_DIR/${i}_clean_aln_pe_unique.bam \
	-ERC GVCF -nct 20 -o $OUT_DIR/${i}.g.vcf
done
