#!/bin/bash

tools_sunxin_pipe -p 40 diy -f name_PTV06  --work_dir /2-map/2-wg  --cmd_str "./rmdup_for_pe.sh SHORT_NAME"

cd ./2-map/2-wg
samtools merge PTV06_merge.bam PTV06_1st_wg_f_sort_rmdup_se.bam PTV06_2nd_wg_f_sort_rmdup_se.bam

tools_sunxin_pipe -p 40 diy -i PTV06 -s PTV06 --work_dir '/.'  --cmd_str "./merge_rmdup.sh SHORT_NAME"

cd ../../

tools_sunxin_pipe -p 6 diy -i PTV06 -s PTV06 --work_dir /3-vcf --cmd_str "./haplotypecaller.sh SHORT_NAME"
