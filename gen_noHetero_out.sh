#!/bin/bash


bcftools view -e 'FORMAT/GT[16] == "./." || FORMAT/GT[16] == "0/1"' auto_neutral_withOUT_hq_trvn.vcf > auto_neutral_PLE_noHetero_hq_trvn.vcf &

bcftools view -e 'FORMAT/GT[17] == "./." || FORMAT/GT[17] == "0/1"' auto_neutral_withOUT_hq_trvn.vcf > auto_neutral_PUN_noHetero_hq_trvn.vcf &
