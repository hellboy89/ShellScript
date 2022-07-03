#!/bin/bash

read -p "Qual o melhor aluno: " melhor

for i in $(cat nomes_teste.txt)
do
	if [ $i = $melhor ]
	then
		echo "$i é o melhor aluno."
		break
	fi
	echo "Aluno: $i"
done

