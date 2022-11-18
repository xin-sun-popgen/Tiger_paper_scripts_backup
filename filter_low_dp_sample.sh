#!/bin/bash

# AMO samples left
# amo3305, amo3308
# A3, HPS, Y7
bcftools view -s ^amo3311,M2,Y14,HNSD -O v -o dpSNP_al2_snp_amo2_3_modern.vcf dpSNP_al2_snp_amo3_6_modern.vcf
