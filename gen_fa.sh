#!/bin/bash

$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa RUSA21 RUSA21_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa pti217 pti217_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa PTV06 PTV06_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa HPS HPS_psmc 4 &

$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa pti220 pti220_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa NGH2 NGH2_psmc 4 &

$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa pti096 pti096_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa RFET0003 RFET0003_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa pti103 pti103_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa pti248 pti248_psmc 4 &
$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris.scaffold.fa pti306 pti306_psmc 4 &

