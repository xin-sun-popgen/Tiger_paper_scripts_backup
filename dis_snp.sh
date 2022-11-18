#!/bin/bash

awk '{print $1,$2,$3,NR*10,$5,$6}' OFS='\t' dbSNP_out_amo3_dp5_gtmod.snp > dis_dbSNP_out_amo3_dp5_gtmod.snp
