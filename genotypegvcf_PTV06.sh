#!/bin/bash

i=$1
gatk4 --java-options "-Xmx16g -Xms4g" \
    GenomicsDBImport \
    --genomicsdb-workspace-path database_${i} \
    --sample-name-map sample_list_PTV06 \
    --intervals ${i}
gatk4 --java-options "-Xmx32g" GenotypeGVCFs -R $TIGER_WG -V gendb://database_${i} -O ${i}.vcf.gz --use-new-qual-calculator --verbosity ERROR
