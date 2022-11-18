#!/bin/bash

vcf=$1

bcftools view -e 'FORMAT/GT[10] == "./."' ${vcf} > PLE_${vcf} &
bcftools view -e 'FORMAT/GT[11] == "./."' ${vcf} > PUN_${vcf}
