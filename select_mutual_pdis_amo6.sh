#!/bin/bash

bcftools view -T ^exon_1k_noend_merge.bed -O v -o mutual_filter_dp_amo3_6_modern_snp.vcf filter_dp_amo3_6_modern_snp.vcf
tools_sunxin_pipe -p 20 pdis -i mutual_filter_dp_amo3_6_modern_snp.vcf
