#!/bin/bash

for i in {"1-1","1-2","1-3","1-4","1-5","1-6","1-7","1-8"}
do
    mv ./pool-${i}_R1.fq.gz ./pool-${i}_1.fq.gz
    mv ./pool-${i}_R2.fq.gz ./pool-${i}_2.fq.gz
done
