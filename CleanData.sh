#! /bin/bash

cd data

echo "year;month;day;hour;minute;PM10;PM25" > ../AllData.csv
for F in *
do
	tail -n +2 $F | sed "s/7245;SDS011;3664;51.216;3.220;\(....\)-\(..\)-\(..\)T\(..\).\(..\).*;\([^;]*\);;;\([^;]*\);;/\1;\2;\3;\4;\5;\6;\7/" >> ../AllData.csv
done
