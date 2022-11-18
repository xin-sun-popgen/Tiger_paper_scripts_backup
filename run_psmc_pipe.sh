#!/bin/bash

ID=$1

$TOOLS_SUNXIN/vcf2fa.py auto_neutral_withOUT_hqc.vcf ../P_tigris_mask_auto.fa ${ID} ${ID}_psmc 4

# generate PSMC fasta
/opt/install.bak/psmc-master/utils/fq2psmcfa -q 20 ${ID}_psmc.fa > ${ID}.psmcfa
/opt/install.bak/psmc-master/utils/splitfa ${ID}.psmcfa > ${ID}_split.psmcfa

# run PSMC
psmc -N25 -t20 -p "4+25*2+4+6" -o ${ID}.psmc ${ID}.psmcfa

# plot PSMC
psmc_plot.pl -g5 -u0.64e-8 plot_${ID} ${ID}.psmc


