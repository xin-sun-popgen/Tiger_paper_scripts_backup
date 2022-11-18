#!/bin/bash

for i in $(cat name_final_amo)
do
    samtools bedcov tiger_scaffold_n20.bed ${i}_clean_aln_pe_unique.bam > depth_${i}.bed &
done
