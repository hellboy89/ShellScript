#!/bin/bash

clear

#while [ true ]
for (( i+1 ; i<=100000 ; i++ ))
do
	echo "teste de arquivo - $RANDOM" >> /tmp/teste
done

echo "Finalizando..."

sleep 5

