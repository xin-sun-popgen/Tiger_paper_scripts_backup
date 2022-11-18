#!/bin/bash

sed 's/AAA/'${1}'/g' spp6_out | sed 's/BBB/'$2'/g' | sed 's/CCC/'$3'/g' | sed 's/DDD/'$4'/g' |sed 's/EEE/'$5'/g' | sed 's/FFF/'$6'/' | sed 's/GGG/'$7'/g' | sed 's/aaa/'$8'/g' | sed 's/bbb/'$9'/g' | sed 's/ccc/'${10}'/g' | sed 's/ddd/'${11}'/g' |sed 's/eee/'${12}'/g' | sed 's/fff/'${13}'/g' | sed 's/ggg/'${14}'/g' | sed 's/REP/'${15}'/g' > spp6_out_$8_$9_${10}_${11}_${12}_${13}_${14}_${15}
