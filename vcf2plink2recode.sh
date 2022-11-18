#!/bin/bash

VCF=$1
vcftools --plink --vcf ${VCF}.vcf --out ${VCF}
plink --file ${VCF} --out ${VCF}_recode12 --recode12
