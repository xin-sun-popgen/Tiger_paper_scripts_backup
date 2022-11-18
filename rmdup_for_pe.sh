#!/bin/bash

SHORT_NAME=$1

samtools view -h ${SHORT_NAME}_wg_f_sort_rmdup.bam | awk '{if(match($1, "@")){print $0}else{if(and($2,64)){$1=$1"_1"}else{$1=$1"_2"};$2=0;if(match($6,"S")){}else{print $0}}}' OFS='\t' > ${SHORT_NAME}_wg_f_sort_rmdup_se.sam
samtools markdup -r ${SHORT_NAME}_wg_f_sort_rmdup_se.sam ${SHORT_NAME}_wg_f_sort_rmdup_se.bam
# samtools addreplacerg -r "ID:${SHORT_NAME}\tLB:${SHORT_NAME}\tPL:illumina\tSM:${SHORT_NAME}\tPU:${SHORT_NAME}" ${SHORT_NAME}_wg_f_sort_rmdup_se.bam | samtools view -h -bo ${SHORT_NAME}_wg_f_sort_rmdup_se_rg.bam
samtools index ${SHORT_NAME}_wg_f_sort_rmdup_se.bam &
# mapDamage -i ${SHORT_NAME}_wg_f_sort_rmdup_se_rg.bam -r $TIGER_WG -d ./${SHORT_NAME} &
