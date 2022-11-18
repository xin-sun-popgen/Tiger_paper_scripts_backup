#!/bin/bash

# $1 scaffold_1_1000
astral -a sample_map_pop_amo_remove -i ./w50s25_amolow_remove/RAxML_bestTree.${1}  -o ./w50s25_amolow_remove/pop_amo_remove_${1}.tre >> log_merge_indi_amo_remove
