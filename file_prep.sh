#!/bin/bash

sleep 0s

# filter for snps # ./filter_snp_al2.sh

# filter for dbSNP

# change file name

vcf=$1

# bgzip -@ 80 ${vcf}
# bcftools index ${vcf}.gz

# generate auto, chrX, chrY
bcftools view -T ../../Cat_Chr_Map/x_chr_list.bed ${vcf} -O v -o chrX_${vcf} &
bcftools view -T ../../Cat_Chr_Map/y_chr_list.bed ${vcf} -O v -o chrY_${vcf} &
bcftools view -T ../../Cat_Chr_Map/autosome_chr_list.bed ${vcf} -O v -o auto_${vcf}

bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed chrX_${vcf} -O v -o chrX_neutral_${vcf} &
bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed chrY_${vcf} -O v -o chrY_neutral_${vcf} &
bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed auto_${vcf} -O v -o auto_neutral_${vcf}

# generate autosome phylip
# cd /share/users/sunx/1-South_China_Tiger/2-holotype/0-AMO_sum/3b-format_transform/1-round_11th
# ln -s ../../3-vcf/16_final_ALL_AMO_PTV_RUSA190818/auto_neutral_${vcf} auto_neutral_${vcf}
# $TOOLS_SUNXIN/vcf2phylip.py auto_neutral_${vcf} auto_neutral 80

# generate autosome eigenstrat
# $TOOLS_SUNXIN/vcf2eigenstrat.py auto_neutral_${vcf} auto_neutral 80
