#!/bin/bash

# $1 scaffold_1_1000
astral -a sample_map_pop -i ./w100s50/RAxML_bestTree.${1}  -o ./w100s50/pop_${1}.tre >> log_indi2pop
