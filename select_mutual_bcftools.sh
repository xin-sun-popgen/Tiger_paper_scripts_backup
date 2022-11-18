#!/bin/bash

java -Xmx64g -jar /opt/bin/GATK.jar -T SelectVariants \
    -R $TIGER_WG \
    -V pass_gatk_alt1_dp_raw_rescale_snp.vcf \
    -o amo3_modern_mutual.vcf \
    -XL exon_1k_noend_merge.intervals \
    -nt 40
