#!/bin/bash

bcftools view -T ^../exon_1k_noend_merge.bed -O v -o mutual_dpSNP_al2_snp_amo3_6_modern.vcf dpSNP_al2_snp_amo3_6_modern.vcf
tools_sunxin_pipe -p 40 pdis -i mutual_dpSNP_al2_snp_amo3_6_modern.vcf
