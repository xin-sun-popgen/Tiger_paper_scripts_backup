#!/bin/bash

gatk4 --java-options "-Xmx128g -Xms16g" \
    GenomicsDBImport \
    --genomicsdb-workspace-path my_database \
    --sample-name-map sample_list \
    --reader-threads 40 \
    --intervals scaffold2
