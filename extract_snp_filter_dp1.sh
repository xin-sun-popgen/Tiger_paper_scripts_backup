#!/bin/bash

gatk -T SelectVariants \
    -R $TIGER_WG \
    -V ./amo3_6_modern.vcf \
    -selectType SNP \
    -o amo3_6_modern_snp.vcf

gatk -T SelectVariants \
    -R $TIGER_WG \
    -V ./amo3_6_modern.vcf \
    -selectType INDEL \
    -o amo3_6_modern_indel.vcf &

grep -v '\.\/\.' amo3_6_modern_snp.vcf > filter_dp_amo3_6_modern_snp.vcf
