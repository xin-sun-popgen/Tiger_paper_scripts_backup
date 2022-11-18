#!/bin/bash

id_graph=$1

qpGraph -p par_qpG -g gr_${id_graph}  -d gr_${id_graph}.dot -o gr_${id_graph}.ggg > gr_${id_graph}.out
dot -Tpng -Gdpi=300 gr_${id_graph}.dot > plot_gr_${id_graph}.png
