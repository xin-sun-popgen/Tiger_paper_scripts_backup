#!/bin/bash

vcf=$1

bgzip -c -@ 50 PLE_${vcf} > PLE_${vcf}.gz
tabix PLE_${vcf}.gz &

bgzip -c -@ 50 PUN_${vcf} > PUN_${vcf}.gz
tabix PUN_${vcf}.gz &
