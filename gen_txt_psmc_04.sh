#!/bin/bash

for i in $(ls pti*psmc RFET*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.40e-8 plot_04_${i} ${i}
    awk '{print $1,$2,"m","'${i}'"}' OFS='\t' plot_04_${i}.0.txt >> ./psmc_plot_04_bs_txt
done

for i in $(ls PTV*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.40e-8 -M "PTV06=0.32" plot_04_${i} ${i}
    awk '{print $1,$2,"m","'${i}'"}' OFS='\t' plot_04_${i}.0.txt >> ./psmc_plot_04_bs_txt
done

for i in $(ls RUSA*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.40e-8 -M "RUSA21=0.2" plot_04_${i} ${i}
    awk '{print $1,$2,"m","'${i}'"}' OFS='\t' plot_04_${i}.0.txt >> ./psmc_plot_04_bs_txt
done

for i in $(ls HPS*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.40e-8 -M "HPS=0.32" plot_04_${i} ${i}
    awk '{print $1,$2,"m","'${i}'"}' OFS='\t' plot_04_${i}.0.txt >> ./psmc_plot_04_bs_txt
done






