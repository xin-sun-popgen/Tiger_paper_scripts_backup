#!/bin/bash

for i in $(awk '{print $1}' name)
do
    psmc_plot.pl -g5 -u0.7e-8 plot_mu35_${i} ${i}.psmc &
done
