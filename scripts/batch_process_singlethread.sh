#!/bin/bash
for c in $(seq 0 0)
do
	for m in $(seq 0 0)
	do
		for u in $(seq 0 7)
		do
   			echo "c $c  m $m  u $u"
			u8=`expr 8 \* $u`
			id0=`expr 0 + $u8`
			#../build/ProcessMesh_compare 2 $c $m $u
			python prepare_data.py $1 $2 $c $m $u $id0
			wait
		done
	done
done
