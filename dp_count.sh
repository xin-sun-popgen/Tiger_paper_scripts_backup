#!/bin/bash

awk '{++a[$'$2']}END{for (i in a) print i, a[i]}' OFS='\t' dp_sample_nohead | sort -V -k1 > SNP_DP_$1
Rscript $TOOLS_SUNXIN/R_script_sunxin/plot_dp.R $1
