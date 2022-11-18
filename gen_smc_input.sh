#!/bin/bash

# generate smc.gz

# SUM
mkdir SUM
cd ./SUM
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME SUM:pti096,pti177,pti183,pti184,pti185,pti186,pti208,SRR836372"

# PTV
cd ..
mkdir PTV
cd ./PTV
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME PTV:PTV06,PTV02,PTV17,SRR836372"

# TIG
cd ..
mkdir TIG
cd ./TIG
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME TIG:pti103,pti105,pti331,SRR836372"

# JAX
cd ..
mkdir JAX
cd ./JAX
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME JAX:pti247,pti248,pti262,pti269,pti270,pti272,pti273,pti303,pti304,SRR836372"

# COR
cd ..
mkdir COR
cd ./COR
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME COR:pti292,pti305,pti306,pti307,pti330,pti332,SRR836372"

# AMUR
cd ..
mkdir AMUR
cd ./AMUR
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME AMUR:RFET0002,RFET0003,RFET0005,RFET0006,RFET0007,RFET0011,SRR836372"

# AMO
cd ..
mkdir AMO
cd ./AMO
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME AMO:A3,AMO3305,AMO3308,AMO3311,HNSD,HPS,M2,NGH2,PtiP121,Y14,Y3,Y7,pti217,pti220,SRR836372"

# AMO_PURE
cd ..
mkdir AMO_PURE
cd ./AMO_PURE
tools_sunxin_pipe -p 50 diy -f ../tiger_scaffold_10k --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836372 SRR836372 ../auto_no_old_dbSNP_withOUT_al2_snp_10th_transversion.vcf.gz SHORT_NAME.smc.gz SHORT_NAME AMO:A3,AMO3305,AMO3308,AMO3311,HNSD,HPS,PtiP121,Y3,Y7,pti220,SRR836372"

