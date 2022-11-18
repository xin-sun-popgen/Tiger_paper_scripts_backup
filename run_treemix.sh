#!/bin/bash

treemix=$1

for i in {1..9}
do
    treemix -i ${treemix} -root PLE,PUN -k 1000 -m ${i} -o out_k1k_m${i} > log_k1k_${i} &
done

treemix -i ${treemix} -root PLE,PUN -k 1000 -o out_k1k_m0 > log_k1k_0 &
