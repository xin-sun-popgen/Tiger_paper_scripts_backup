#!/bin/bash

for i in 'SRR836361' 'SRR836372'
do
    $TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf P_tigris_auto.fa ${i} ${i} &
done
