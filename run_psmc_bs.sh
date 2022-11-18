#!/bin/bash

bs_index=$1
sample=$2

psmc -N25 -t15 -b -p "4+25*2+4+6" -o ./psmc_bootstrap/${bs_index}.psmc ${sample}_split.psmcfa
