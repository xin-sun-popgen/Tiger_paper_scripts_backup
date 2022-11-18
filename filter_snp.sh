#!/bin/bash

echo `date` >> log_run
echo 'start filter with p1' >> log_run

gatk -T VariantFiltration \
    -R $TIGER_WG \
    -V filter_dp_amo3_6_modern_snp.vcf \
    --filterExpression "QD < 2.0 || MQ < 40.0 || ReadPosRankSum < -5.0 || QUAL < 20.0 || FS > 200.0 || BaseQRankSum < -5.0 || MQRankSum < -5.0" \
    --filterName 'gatk_filter' \
    --out filter_gatk_dp_amo3_6_modern_snp.vcf

echo 'filter done with p1' >> log_run
echo `date` >> log_run

grep -v gatk_filter filter_gatk_dp_raw_rescale_snp.vcf > pass_gatk_dp_raw_rescale_snp.vcf

