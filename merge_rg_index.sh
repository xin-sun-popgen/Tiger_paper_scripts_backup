#!/bin/bash

i=$1
samtools view -h ${i}_merge.bam | grep -v ^@RG | samtools view -h -bo ${i}_merge_nrg.bam
samtools addreplacerg -r "ID:${i}\tLB:${i}\tPL:illumina\tSM:${i}\tPU:${i}" ${i}_merge_nrg.bam | samtools view -h -bo ${i}_merge_rg.bam
samtools index ${i}_merge_rg.bam
