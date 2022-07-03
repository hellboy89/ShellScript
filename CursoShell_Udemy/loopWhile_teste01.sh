#!/bin/bash

i=1

while [ true ]
do
	echo "$i"
	i=$(expr $i + 1)
	if [ "$i" -eq "30" ]
	then
		break
	fi
done
