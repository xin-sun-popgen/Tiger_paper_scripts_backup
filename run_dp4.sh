#!/bin/bash

for i in $(cat name_final_modern_without220)
do
    awk '{$5=$4/($3-$2); print $0}' depth_${i}.bed | awk '{if($5<4) print $1,$2,$3}' OFS='\t' | bedtools merge -i stdin > ${i}_dp4_for_mark.bed &
done

for i in $(cat name_AMO)
do
    awk '{$5=$4/($3-$2); print $0}' depth_${i}_merge.bed | awk '{if($5<4) print $1,$2,$3}' OFS='\t' | bedtools merge -i stdin > ${i}_dp4_for_mark.bed &
done


