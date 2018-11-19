#! /bin/bash

cd data
for Y in 2017
do

	for M in {11..12}
	do
		if [ $M -lt 10 ]
		then
			M="0$M"
		fi

		for D in {1..31}
		do
			if [ $D -lt 10 ]
			then
				D="0$D"
			fi


			echo "$Y-$M-$D"
			wget "archive.luftdaten.info/$Y-$M-$D/$Y-$M-$D""_sds011_sensor_7245.csv"
		done
	done
done
