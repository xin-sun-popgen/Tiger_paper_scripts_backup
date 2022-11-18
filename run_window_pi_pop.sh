#!/bin/bash

vcf=$1

for j in {AMO,AMUR,RUSA,PTV,COR,JAX,SUM,TIG}
do
    vcftools --vcf ${vcf} --keep ./pop/${j} --window-pi 1000000 --window-pi-step 200000 --out ./pop/auto_hq_pi_${j} &
done
