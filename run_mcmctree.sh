#!/bin/bash

id=$1

cd w100_s25_l10_n1per
cd $id

mcmctree mcmctree_${id}.ctl > log_mcmctree 2>&1
