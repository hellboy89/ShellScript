#!/bin/bash

clear
read -p "Informe o início da sequência: " inicio
read -p "Informe o final da sequência: " final

for i in $(seq $inicio $final)
do
	echo "Exibindo o valor $i"
done

echo

#####

for (( j=$inicio ; j<=$final ; j++ ))
do
	echo "Exibindo o valor $j"
done

