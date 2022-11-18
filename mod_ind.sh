#!/bin/bash

vcf=$1

awk '{print $1,"U",$1}' OFS='\t' ${vcf}.ind > ${vcf}.indi
