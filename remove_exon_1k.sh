#!/bin/bash

vcf=$1

bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed auto_${vcf} -O v -o auto_mutual_${vcf} &
bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed chrX_${vcf} -O v -o chrX_mutual_${vcf} &
bcftools view -T ^../../Cat_Chr_Map/exon_1k_merge.bed chrY_${vcf} -O v -o chrY_mutual_${vcf} &
