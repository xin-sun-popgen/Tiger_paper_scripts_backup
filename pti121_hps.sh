#!/bin/bash

RAW_FQ=/share/seqdata/South_China_Tiger/hps_pti121/data_release/raw_data
WORK_DIR=/share/users/sunx/1-South_China_Tiger/2-holotype/4-pti121_hps
FQ_DIR=/share/users/sunx/1-South_China_Tiger/2-holotype/4-pti121_hps/1-trim_fq

cd $WORK_DIR
# mkdir novo_2nd

# cd novo_2nd

mkdir 1-trim_fq
cd 1-trim_fq
for i in {HPS,Pti121}
do
   cutadapt \
                --trim-n -q 30,30 -m 40 \
                -a AGATCGGAAGAGC -A AGATCGGAAGAGC \
                -o trim_${i}_1.fq -p trim_${i}_2.fq \
                $RAW_FQ/${i}_H2KK5CCXY_L2_1.fq.gz $RAW_FQ/${i}_H2KK5CCXY_L2_2.fq.gz 
done

cd $WORK_DIR
mkdir 2-map
cd 2-map
mkdir 1-mt
cd 1-mt
for i in {HPS,Pti121}
do
    bwa mem -t 40 $TIGER_MT $FQ_DIR/trim_${i}_1.fq $FQ_DIR/trim_${i}_2.fq > ${i}.sam
    samtools view -b -h -q 1 -F 3852 -f 3 ${i}.sam -o ${i}_f.bam
    samtools sort -@ 20 -o ${i}_f_sort.bam ${i}_f.bam
    samtools rmdup -s ${i}_f_sort.bam ${i}_f_sort_rmdup.bam
    rm ${i}_f.bam
    rm ${i}_f_sort.bam
done

