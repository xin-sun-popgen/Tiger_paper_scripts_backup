#!/bin/bash

SHORT_NAME=$1

samtools view -b -h -q 20 ${SHORT_NAME}_wg.sam -o ${SHORT_NAME}_wg_f.bam
samtools sort -n -@ 20 -o ${SHORT_NAME}_wg_f_nsort.bam ${SHORT_NAME}_wg_f.bam
samtools fixmate -m ${SHORT_NAME}_wg_f_nsort.bam ${SHORT_NAME}_wg_f_nsort_fix.bam
samtools sort -@ 20 -o ${SHORT_NAME}_wg_f_sort.bam ${SHORT_NAME}_wg_f_nsort_fix.bam
samtools stats ${SHORT_NAME}_wg_f_sort.bam > stat_${SHORT_NAME}_wg_f_sort.bam
rm ${SHORT_NAME}_wg_f.bam &
rm ${SHORT_NAME}_wg_f_sort.bam &
rm ${SHORT_NAME}_wg_f_nsort.bam &
rm ${SHORT_NAME}_wg_f_nsort_fix.bam &

map_base=$(grep 'bases mapped (cigar):' stat_${SHORT_NAME}_wg_f_sort.bam | awk -F '\t' '{print $3}')
echo ${SHORT_NAME} ${map_base} >> ../../stat_before_dup
