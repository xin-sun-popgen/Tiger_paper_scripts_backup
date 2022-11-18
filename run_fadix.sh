#!/bin/bash

for i in {cat,cat_80,tiger,lion,cheetah,jaguar,puma}
do
    samtools faidx ../0-ref/${i}.fa &
done
