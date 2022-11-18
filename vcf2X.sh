#!/bin/bash

vcf=$1

# philip
$TOOLS_SUNXIN/vcf2phylip.py ${vcf}.vcf ${vcf} 80

sleep 30s

# eignstrat
$TOOLS_SUNXIN/vcf2eigenstrat.py ${vcf}.vcf ${vcf} 80

# plink
vcftools --plink --vcf ${vcf}.vcf --out ${vcf}
plink --file ${vcf} --out ${vcf}_recode12 --recode12




German,
Poland
Denmark
Austria
Czech

Romania
Slovakia
Poland
BH
Bulgaria

Estonia
Latvia
Ukrain
Lithuania

India
Iran
Isreal
Syria
Saudi

From José Cerca to Everyone: (10:24 AM)
 https://github.com/simonhmartin/twisst That’s the software I used to do Topology Weighting Some slides: http://evomics.org/wp-content/uploads/2020/01/topology_weighting_slides.pdf 
From José Cerca to Everyone: (10:26 AM)
 http://evomics.org/learning/population-and-speciation-genomics/2020-population-and-speciation-genomics/topology-weighting/ 
From Andrew Foote to Everyone: (10:32 AM)
 This method doesn’t assume pure ancestry in the reference genomes: https://maths.ucd.ie/~mst/MOSAIC/ 