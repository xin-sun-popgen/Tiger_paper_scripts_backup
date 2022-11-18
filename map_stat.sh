#!/bin/bash

RAW_FQ=/share/seqdata/South_China_Tiger/novogene_2nd/data_release/raw_data
WORK_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd
FQ_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd/1-cutadapt

cd $WORK_DIR
cd 3-wg
for i in {AMO3305,AMO3308,AMO3311}
do
    samtools stats ${i}_f_sort_rmdup.bam  > map_stat_${i}_rmdup &
done
