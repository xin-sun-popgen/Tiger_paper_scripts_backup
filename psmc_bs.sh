#!/bin/bash

# script for psmc bootstrap run

PSMCFA=$1    # .psmcfa
PSMCFA_BS=$2 # split.psmcfa
OUT=$3       # bs out name prefix


psmc -N25 -t15 -p "4+25*2+4+6" -o ${OUT}.psmc ${PSMCFA} &
for i in $(seq 1 4)
do
    for j in $(seq 1 25)
    do
        psmc -N25 -t15 -b -p "4+25*2+4+6" -o ${OUT}_${i}_${j}.psmc ${PSMCFA_BS} &
    done
    sleep 2h
done
