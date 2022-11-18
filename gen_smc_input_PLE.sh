#!/bin/bash

# generate smc.gz for PLE SRR836361
vcf=$1

mkdir PLE
cd ./PLE

# SUM
mkdir SUM
cd ./SUM
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME SUM:pti096,pti177,pti183,pti184,pti185,pti186,pti208,SRR836361"

# PTV
cd ..
mkdir PTV
cd ./PTV
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME PTV:PTV06,PTV02,PTV17,SRR836361"

# TIG
cd ..
mkdir TIG
cd ./TIG
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME TIG:pti103,pti105,pti331,SRR836361"

# JAX
cd ..
mkdir JAX
cd ./JAX
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME JAX:pti247,pti248,pti262,pti269,pti270,pti272,pti273,pti303,pti304,SRR836361"

# COR
cd ..
mkdir COR
cd ./COR
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME COR:pti292,pti305,pti306,pti307,pti330,pti332,SRR836361"

# AMUR
cd ..
mkdir AMUR
cd ./AMUR
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME AMUR:RFET0002,RFET0003,RFET0005,RFET0006,RFET0007,RFET0011,SRR836361"

# AMO
cd ..
mkdir AMO
cd ./AMO
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME AMO:A3,AMO3305,AMO3308,HNSD,HPS,NGH2,Y14,Y3,Y7,pti217,pti220,SRR836361"

# AMO_PURE
cd ..
mkdir AMO_PURE
cd ./AMO_PURE
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME AMO:A3,AMO3305,AMO3308,HNSD,HPS,Y3,Y7,pti220,SRR836361"

# RUSA
cd ..
mkdir RUSA
cd ./RUSA
tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc -d SRR836361 SRR836361 ../../${vcf} SHORT_NAME.smc.gz SHORT_NAME RUSA:RUSA21,SRR836361"
