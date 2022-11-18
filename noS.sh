#!/bin/bash

RAW_FQ=/share/seqdata/South_China_Tiger/novogene_2nd/data_release/raw_data
WORK_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd
FQ_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd/1-cutadapt

cd $WORK_DIR
cd 3-wg
for i in {AMO3305,AMO3308,AMO3311}
do
    samtools view -h ${i}_f_sort_rmdup.bam | awk '{if(match($1,"@")){print $0}else{if(match($6,"S")){}else{print $0}}}' > ${i}_rmdup_noS.sam &
done
