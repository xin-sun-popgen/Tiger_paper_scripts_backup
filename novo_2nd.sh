#!/bin/bash

RAW_FQ=/share/seqdata/South_China_Tiger/novogene_2nd/data_release/raw_data
WORK_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd
FQ_DIR=/home/sunx/0-share/1-South_China_Tiger/2-holotype/novo_2nd/1-cutadapt


# cd $WORK_DIR
# mkdir novo_2nd

# cd novo_2nd

# mkdir 1-cutadapt
# cd 1-cutadapt
# for i in {AMO3305,AMO3308,AMO3311}
# do
#    cutadapt \
#                 --trim-n -q 30,30 -m 40 \
#                 -a AGATCGGAAGAGC -A AGATCGGAAGAGC \
#                 -o trim_${i}_1.fq -p trim_${i}_2.fq \
#                 $RAW_FQ/${i}_H7VFTALXX_L8_1.fq.gz $RAW_FQ/${i}_H7VFTALXX_L8_2.fq.gz &
# done
 
# cd 1-cutadapt
# for i in {AMO3305,AMO3308,AMO3311} 
# do
#     fastqc -t 40 --extract -o ./ trim_${i}_1.fq trim_${i}_2.fq &
# done 

cd $WORK_DIR
mkdir 2-mt
cd 2-mt
for i in {AMO3308,AMO3311}
do
    bwa mem -t 40 $TIGER_MT $FQ_DIR/trim_${i}_1.fq $FQ_DIR/trim_${i}_2.fq > ${i}.sam
    samtools view -b -h -q 1 -F 3852 -f 3 ${i}.sam -o ${i}_f.bam
    samtools sort -@ 20 -o ${i}_f_sort.bam ${i}_f.bam
    samtools rmdup -s ${i}_f_sort.bam ${i}_f_sort_rmdup.bam
    rm ${i}_f.bam
    rm ${i}_f_sort.bam
done


cd $WORK_DIR
mkdir 3-wg
cd 3-wg
for i in {AMO3305,AMO3308,AMO3311}
do
    bwa mem -t 40 $TIGER_WG $FQ_DIR/trim_${i}_1.fq $FQ_DIR/trim_${i}_2.fq > ${i}.sam
    samtools view -b -h -f 3 -q 1 -F 3852 ${i}.sam -o ${i}_f.bam
    samtools sort -@ 20 -o ${i}_f_sort.bam ${i}_f.bam
    samtools rmdup ${i}_f_sort.bam ${i}_f_sort_rmdup.bam
    rm ${i}_f.bam
    rm ${i}_f_sort.bam
done
