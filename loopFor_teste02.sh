#!/bin/bash

for variavel in 1 2 3 4 5
do
	echo "o valor atual e $variavel"
done

echo

#####

for i in a b c d
do
	echo "o valor atual é $i"
done

echo

#####

for valor in $(seq 1 5 30)
do
	echo "o valor é $valor"
done

echo

#####

for i in {10..15}
do
	echo "valor $i"
done

echo

#####

for cont in {0..10..2}
do
	echo "valor $cont"
done

echo

#####

for arquivo in condicional*
do
	echo "O arquivo atual é $arquivo"
done

echo

#####

for arquivo2 in condicional*
do
	echo "Copiando arquivo $arquivo2"
	cp $arquivo2 $arquivo2-copia
	echo "====="
done







