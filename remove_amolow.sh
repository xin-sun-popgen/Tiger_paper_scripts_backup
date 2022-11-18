#!/bin/bash


grep -v AMO3311 ./w50s25/${1}.philip | grep -v HNSD | grep -v M2 | grep -v Y14 | grep -v Y3 | awk '{if(NR==1){$1=39}; print $0}'  > ./w50s25_amolow_remove/${1}.philip
