#!/bin/bash

for i in {05,10,15,20,25,30,35,40,45,50}
do
    alder -p ./par_file_dup/par_alder_${i} >> ./result_log_dup/log_${i}  2>&1 &
done
