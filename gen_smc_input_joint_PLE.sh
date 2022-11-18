#!/bin/bash

# generate smc.gz for PUN SRR836372
vcf=$1

amo='AMO:A3,AMO3305,AMO3308,HNSD,HPS,NGH2,Y14,Y3,Y7,pti217,pti220'
amo_pure='AMO_PURE:A3,AMO3305,AMO3308,HNSD,HPS,Y3,Y7,pti220'
sum='SUM:pti096,pti177,pti183,pti184,pti185,pti186,pti208'
cor='COR:pti292,pti305,pti306,pti307,pti330,pti332'
jax='JAX:pti247,pti248,pti262,pti269,pti270,pti272,pti273,pti303,pti304'
tig='TIG:pti103,pti105,pti331'
amur='AMUR:RFET0002,RFET0003,RFET0005,RFET0006,RFET0007,RFET0011'
rusa='RUSA:RUSA21'
ptv='PTV:PTV06,PTV02,PTV17'

pops=($amo $sum $cor $jax $tig $amur $rusa $ptv)
pops_name=('AMO' 'SUM' 'COR' 'JAX' 'TIG' 'AMUR' 'RUSA' 'PTV')

out='SRR836361'
c_100k='-c 100000'

mkdir PLE
cd ./PLE
for ((i=0; i<9; i++));
do
    for ((j=i+1; j<9; j++));
    do
        mkdir ${pops_name[${i}]}"_"${pops_name[$[j]]}
        cd ./${pops_name[${i}]}"_"${pops_name[$[j]]}
        tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc ${c_100k} -d ${out} ${out} ../../${vcf} SHORT_NAME_12.smc.gz SHORT_NAME ${pops[${i}]} ${pops[${j}]},SRR836361"
        tools_sunxin_pipe -p 80 diy -f ../../../tiger_scaffold_10k_pipelist --work_dir "" --cmd_str "smc++ vcf2smc ${c_100k} -d ${out} ${out} ../../${vcf} SHORT_NAME_21.smc.gz SHORT_NAME ${pops[${j}]} ${pops[${i}]},SRR836361"
        cd ..


    done
done
