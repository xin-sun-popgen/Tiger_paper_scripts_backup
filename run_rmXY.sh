#!/bin/bash

for i in {SUM,PTV,TIG,JAX,COR,AMUR,AMO,AMO_PURE}
do
    cd ./${i}
    for j in $(cat ../xy_chr_list)
    do
        rm ${j}.smc.gz &
    done
    cd ..
done
