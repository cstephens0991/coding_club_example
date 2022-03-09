#!/bin/bash

SAMPLES=($(ls *.err |tr " " "\n" | awk -F"." '{print $1}'))

for RUN in ${SAMPLES[@]}
do
	if (cat ${RUN}.err |grep "TIME LIMIT")
	then
		echo ${RUN}.err>>errfile_TIME_LIMIT.txt
	fi
done

