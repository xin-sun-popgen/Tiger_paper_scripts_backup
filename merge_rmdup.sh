#!/bin/bash

i=$1
samtools markdup -r ${i}_merge.bam ${i}_merge_rmdup.bam
samtools addreplacerg -r "ID:${i}\tLB:${i}\tPL:illumina\tSM:${i}\tPU:${i}" ${i}_merge_rmdup.bam | samtools view -h -bo ${i}_merge_rmdup_rg.bam
samtools index ${i}_merge_rmdup_rg.bam
