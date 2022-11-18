#!/bin/bash


# psmc normal fasta to psmc fa and psmc split fa
FA=$1    # normal fasta file
OUT=$2   # out name prefix

/opt/install.bak/psmc-master/utils/fq2psmcfa -q 20 ${FA} > ${OUT}.psmcfa
/opt/install.bak/psmc-master/utils/splitfa ${OUT}.psmcfa > ${OUT}_split.psmcfa
