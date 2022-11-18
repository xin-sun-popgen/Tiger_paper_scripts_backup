#!/bin/bash

id=$1

zscore=$(grep 'worst' gr_${id}.out | awk '{print $11}')
fit_score=$(grep 'final score' gr_${id}.out | awk '{print $3}')
echo ${id}	${zscore} ${fit_score}
