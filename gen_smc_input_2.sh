#!/bin/bash

# generate smc.gz

# AMO_nolow
mkdir AMO_nolow
cd ./AMO_nolow
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME AMO:A3,AMO3305,AMO3308,HNSD,HPS,NGH2,Y14,Y3,Y7,pti217,pti220,SRR836372"

# AMO_PURE_nolow
cd ..
mkdir AMO_PURE_nolow
cd ./AMO_PURE_nolow
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME AMO:A3,AMO3305,AMO3308,HNSD,HPS,Y3,Y7,pti220,SRR836372"

# RUSA
cd ..
mkdir RUSA
cd ./RUSA
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME RUSA:RUSA21,SRR836372"


