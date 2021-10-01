#!/bin/bash

PEGARHORATODA=$(date | awk '{print $5,$6,$8}')
PEGARSOHORA=$(date +"%H")

if [ "$PEGARSOHORA" -ge 06 -a "$PEGARSOHORA" -lt 11 ]
then
	echo "Bom dia!"
elif [ "$PEGARSOHORA" -ge 12 -a "$PEGARSOHORA" -lt 18 ]
then
	echo "Boa tarde!"
elif [ "$PEGARSOHORA" -ge 19 -a "$PEGARSOHORA" -lt 23 ]
then
	echo "Boa noite!"
else
	echo "incorreto!"
fi

echo -e "\nA hora atual e $PEGARHORATODA\n"

