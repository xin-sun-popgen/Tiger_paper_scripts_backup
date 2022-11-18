#!/bin/bash

for i in 'pti096' 'pti184' 'pti103' 'pti331' 'pti306' 'pti332' 'pti247' 'pti304' 'RUSA21' 'PTV06' 'pti220' 'pti217' 'RFET0005' 'RFET0006' 'SRR836361' 'SRR836372'
do
    $TOOLS_SUNXIN/vcf2fa.py auto_all_withOUT_hq.vcf P_tigris_auto.fa ${i} ${i} &
done
