#!/bin/bash

# $1 scaffold_1_1000
astral -a sample_map_pop -i ./w50s25/RAxML_bestTree.${1}  -o ./w50s25/pop_${1}.tre >> log_merge_indi
