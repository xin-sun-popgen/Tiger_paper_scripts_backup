#!/bin/bash

for i in $(cat name)
do
    psmc_plot.pl -g5 -u0.35e-8 plot_${i} ${i}.psmc &
done
