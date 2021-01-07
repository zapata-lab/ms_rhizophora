#!/bin/sh

treshold=$2

sed 1d $1 | while read lines
do
	percent=$(echo $lines |cut -d " " -f 5)
	tresult=$(echo $percent \> $treshold |bc)
	if [ $tresult -eq 1 ]
	then
		echo $lines |cut -d " " -f 1
	fi
done

