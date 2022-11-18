#!/bin/bash

vcf=$1

awk '{print $1,$2,$3,NR*10,$5,$6}' OFS='\t' ${vcf}.snp > ${vcf}.snp_dis
