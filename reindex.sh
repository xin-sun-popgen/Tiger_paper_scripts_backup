#!/bin/bash

IN_NAME=$1
INDEX=$2

zcat ${IN_NAME}_1.fq.gz | awk 'BEGIN{a=0}{if(NR%4==1){if(match($0,'\"${INDEX}\"')){a=1}else{a=0}};if(a==1){print $0};}' | gzip > reindex_${IN_NAME}_1.fq.gz &
zcat ${IN_NAME}_2.fq.gz | awk 'BEGIN{a=0}{if(NR%4==1){if(match($0,'\"${INDEX}\"')){a=1}else{a=0}};if(a==1){print $0};}' | gzip > reindex_${IN_NAME}_2.fq.gz &
