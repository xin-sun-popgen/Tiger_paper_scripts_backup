#!/bin/bash

id=$1

cd w100_s25_l10_n1per
cd $id

raxmlHPC-PTHREADS -f a -x $RANDOM -p $RANDOM -T 2 -# 100 -m GTRGAMMA -s ${id}.philip -n ${id} > log_raxml 2>&1

