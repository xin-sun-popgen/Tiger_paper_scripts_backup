!#/bin/bash
'''
cut fastq file sequence from both end 
'''
file_name=$1
cut_length=$2

awk '{if(NR%4==2||NR%4==0){print substr($0,'${cut_length}'+1,length($0)-2*'${cut_length}')}else{print $0}}' ${file_name} > end_cut_${file_name}
