#!/bin/bash

vcf=$1

bcftools view -s ^PTV02,PTV17 -R ../../Cat_Chr_Map/x_chr_list.bed ${vcf} -O z -o chrX_${vcf} &
bcftools view -s ^PTV02,PTV17 -R ../../Cat_Chr_Map/y_chr_list.bed ${vcf} -O z -o chrY_${vcf} &
bcftools view -s ^PTV02,PTV17 -R ../../Cat_Chr_Map/autosome_chr_list.bed ${vcf} -O z -o auto_${vcf} &
