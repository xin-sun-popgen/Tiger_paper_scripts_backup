#!/bin/bash

name=$1
bedtools maskfasta -fi ${name}.fa -bed exon_1k_merge.bed -fo neutral_${name}.fa
bedtools maskfasta -fi neutral_${name}.fa -bed /share/users/sunx/1-South_China_Tiger/2-holotype/0-AMO_sum/0-map/4-depth_count/${name}_dp4_for_mark.bed -fo mask_${name}.fa
