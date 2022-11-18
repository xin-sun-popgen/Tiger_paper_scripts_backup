#!/bin/bash

cd ./smc_run

for i in {SUM,PTV,TIG,JAX,COR,AMUR,AMO,AMO_PURE}
do
    mkdir ${i}
    cd ${i}
    smc++ cv --core 50 3.5e-9 ../../${i}/scaffold*
    cd ..
done
