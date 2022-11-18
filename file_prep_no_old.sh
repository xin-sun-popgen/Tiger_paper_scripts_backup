#!/bin/bash

sleep 0s

# filter for snps # ./filter_snp_al2.sh

# filter for dbSNP

# change file name

vcf=dbSNP_withOUT_al2_snp_10th.vcf

# bgzip -@ 80 ${vcf}
# bcftools index ${vcf}.gz

# generate auto, chrX, chrY
bcftools view -s ^PTV02_old,PTV17_old,PTV06_old -T ../../Cat_Chr_Map/x_chr_list.bed ${vcf} -O v -o chrX_no_old_${vcf} &
bcftools view -s ^PTV02_old,PTV17_old,PTV06_old -T ../../Cat_Chr_Map/y_chr_list.bed ${vcf} -O v -o chrY_no_old_${vcf} &
bcftools view -s ^PTV02_old,PTV17_old,PTV06_old -T ../../Cat_Chr_Map/autosome_chr_list.bed ${vcf} -O v -o auto_no_old_${vcf}

bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed chrX_no_old_${vcf} -O v -o chrX_mutual_no_old_${vcf} &
bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed chrY_no_old_${vcf} -O v -o chrY_mutual_no_old_${vcf} &
bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed auto_no_old_${vcf} -O v -o auto_mutual_no_old_${vcf}


# generate phylip for ml tree
# cd /share/users/sunx/1-South_China_Tiger/2-holotype/0-AMO_sum/7-Phylogenetics_tree/1-wg_FINAL
# ln -s ../../3-vcf/13-final_ALL_AMO_PTV_RUSA190626/auto_mutual_${vcf} auto_OUT_mutual.vcf
# ln -s ../../3-vcf/13-final_ALL_AMO_PTV_RUSA190626/chrX_mutual_${vcf} chrX_OUT_mutual.vcf
# ln -s ../../3-vcf/13-final_ALL_AMO_PTV_RUSA190626/chrY_mutual_${vcf} chrY_OUT_mutual.vcf

# $TOOLS_SUNXIN/vcf2phylip.py chrY_OUT_mutual.vcf chrY_OUT_mutual 1 &
# $TOOLS_SUNXIN/vcf2phylip.py chrX_OUT_mutual.vcf chrX_OUT_mutual 30 &
# $TOOLS_SUNXIN/vcf2phylip.py auto_OUT_mutual.vcf auto_OUT_mutual 80

# generate eigenstrat file for admixtools
# cd /share/users/sunx/1-South_China_Tiger/2-holotype/0-AMO_sum/5-admixtools/6-final
# ln -s ../../3-vcf/13-final_ALL_AMO_PTV_RUSA190626/auto_mutual_${vcf} auto_OUT_mutual.vcf

# $TOOLS_SUNXIN/vcf2eigenstrat.py auto_OUT_mutual.vcf auto_OUT_mutual 80
