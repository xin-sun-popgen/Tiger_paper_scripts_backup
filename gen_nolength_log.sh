#!/bin/bash

for i in $(ls | grep best);do awk '{print $0}' ${i} >> ../best_tre_w50s25k; done
awk '{print gensub(/:.\.([0-9]+)/, "", "g")}' best_tre_55000 > best_tre_55000_nolength
