#!/bin/bash

echo "Starting..."

SAMPLES=($(ls *.err |tr " " "\n" | awk -F"." '{print $1}'))

echo "SAMPLES = ${SAMPLES}"

for RUN in ${SAMPLES[@]}
do
	if (cat ${RUN}.err |grep "TIME LIMIT")
	then
		echo ${RUN}.err>>errfile_TIME_LIMIT.txt
	fi
done

echo "Finished successfully! Yay!!"
