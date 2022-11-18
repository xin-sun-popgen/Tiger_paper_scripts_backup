#!/bin/bash

for i in $(awk '{print $1}' name)
do
    cat ${i}.psmc ./psmc_bootstrap/${i}* > combine_bs_${i}.psmc &
done
