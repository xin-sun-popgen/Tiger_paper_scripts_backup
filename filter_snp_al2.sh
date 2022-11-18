#!/bin/bash

bcftools filter -g 5 -T scaffold_min10kb -e 'BaseQRankSum<=-1.96 && BaseQRankSum>=-1.96 && MQRankSum <= -1.96 && F_MISSING > 0.5' 10th_raw.vcf  | bcftools view -m2 -M2 -v snps -O v -o 11th_hard.vcf

bcftools view -s ^PTV02_old,PTV06_old,PTV17_old  -O v -o 11th_hard_no_old.vcf 11th_hard.vcf
