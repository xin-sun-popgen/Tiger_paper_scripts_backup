#!/bin/bash

gatk -T SelectVariants \
    -R $TIGER_WG \
    -V ./amo3_6_modern_snp.vcf \
    -xl_sn M2 \
    -nt 20 \
    -o amo3_5_modern_snp.vcf

grep -v '\.\/\.' amo3_5_modern_snp.vcf > filter_dp_amo3_5_modern_snp.vcf
