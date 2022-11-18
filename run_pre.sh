#!/bin/bash

FA_DIR=/share/users/sunx/1-South_China_Tiger/2-holotype/0-AMO_sum/6a-psmc/5-final_9th

for i in $(cat name)
do
    $TOOLS_SUNXIN/sh/psmc_pre.sh ${FA_DIR}/${i}.fa ${i} &
done
