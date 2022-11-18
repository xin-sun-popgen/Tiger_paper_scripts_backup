#!/bin/bash

vcf=$1

bcftools view -e 'FORMAT/GT[16] == "./."' ${vcf} > PLE_${vcf} &
bcftools view -e 'FORMAT/GT[17] == "./."' ${vcf} > PUN_${vcf}
