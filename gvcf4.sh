#!/bin/bash

WORK_DIR=/share/seqdata/South_China_Tiger/modern_tiger
BAM_DIR=/share/seqdata/South_China_Tiger/modern_tiger/5.Tiger_aln_unique
OUT_DIR=/share/seqdata/South_China_Tiger/modern_tiger/1-gvcf

cd $WORK_DIR
for i in {RFET0002,RFET0003,RFET0005,RFET0006,RFET0007,RFET0011,SRR836354,SRR836361,SRR836372}
do
    gatk -T HaplotypeCaller -R $TIGER_WG \
	-I $BAM_DIR/${i}_clean_aln_pe_unique.bam \
	-ERC GVCF -nct 20 -o $OUT_DIR/${i}.g.vcf
done
