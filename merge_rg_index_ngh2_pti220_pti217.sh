#!/bin/bash

i=$1
samtools addreplacerg -r "ID:${i}\tLB:${i}\tPL:illumina\tSM:${i}\tPU:${i}" ${i}_merge.bam | samtools view -h -bo ${i}_merge_rg.bam
samtools index ${i}_merge_rg.bam
