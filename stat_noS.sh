#!/bin/bash

for i in $(cat name_list)
do
    map_read=$(grep 'reads mapped:' stat_${i}_wg_f_sort_rmdup_noS.sam | awk -F '\t' '{print $3}')
    map_base=$(grep 'bases mapped (cigar):' stat_${i}_wg_f_sort_rmdup_noS.sam | awk -F '\t' '{print $3}')
    echo ${i} ${map_read} ${map_base}
done
