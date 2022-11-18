#!/bin/bash


vcf=$1

# ./out_nomis_hq.sh ${vcf}

# sleep 120s
# ./bgzip_vcf.sh ${vcf}


# sleep 120s

./gen_smc_input_c100k_PLE.sh PLE_${vcf}.gz
./gen_smc_input_c100k_PUN.sh PUN_${vcf}.gz
