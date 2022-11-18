#!/bin/bash

for i in $(cat name)
do
    psmc -N25 -t15 -p "4+25*2+4+6" -o ${i}.psmc ${i}.psmcfa &
done
