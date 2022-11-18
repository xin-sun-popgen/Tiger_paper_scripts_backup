#!/bin/bash

VCF=$1

bcftools query -f '[%GT\t]\n' ${VCF}   | awk '{for (i=1; i<=NF; i++)if($i=="0/1"){a[i]++}else if($i=="1/1"){b[i]++}}END{for (j in a) print j,a[j],b[j]}' OFS='\t' > count_snp_${VCF}
