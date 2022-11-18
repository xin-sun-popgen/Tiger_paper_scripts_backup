#!/bin/bash

now="bio"
trans="lig_10m_bi_"

for i in {1..19}
do
    ln -s ../4-new_cut/${trans}${i}".asc" ${now}${i}".asc"
done
