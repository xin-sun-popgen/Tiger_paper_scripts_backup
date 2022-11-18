#!/bin/bash

for i in $(ls pti*bs*psmc RFET*bs*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.64e-8 plot_${i} ${i}
    awk '{print $1,$2,"bs","'${i}'"}' OFS='\t' plot_${i}.0.txt >> ../psmc_plot_bs_txt
done

for i in $(ls PTV*bs*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.64e-8 -M "PTV06=0.32" plot_${i} ${i}
    awk '{print $1,$2,"bs","'${i}'"}' OFS='\t' plot_${i}.0.txt >> ../psmc_plot_bs_txt
done

for i in $(ls RUSA*bs*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.64e-8 -M "RUSA21=0.2" plot_${i} ${i}
    awk '{print $1,$2,"bs","'${i}'"}' OFS='\t' plot_${i}.0.txt >> ../psmc_plot_bs_txt
done

for i in $(ls HPS*bs*psmc)
do
    psmc_plot.pl -R -Y10 -g5 -u0.64e-8 -M "HPS=0.32" plot_${i} ${i}
    awk '{print $1,$2,"bs","'${i}'"}' OFS='\t' plot_${i}.0.txt >> ../psmc_plot_bs_txt
done






