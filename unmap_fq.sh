#!/bin/bash

RAW_FQ=/share/seqdata/South_China_Tiger/novogene_2nd/data_release/raw_data
WORK_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd
FQ_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd/1-cutadapt
HUMAN_REF=/share/genomes/HomoGRCh38/HomoGRCh38.fa

cd $WORK_DIR
cd 3-wg
for i in {AMO3305,AMO3308,AMO3311}
do
    bwa mem -t 20 $HUMAN_REF unmap_${i}_1.fq unmap_${i}_2.fq > unmap_human_${i}.sam &
done
