#!/bin/bash

clear

nomeProcesso=$1
verificaCmatrix=$(dpkg -l | grep $nomeProcesso | wc -l)


if [ "$verificaCmatrix" -eq "0" ]
then
	read -p "Deseja instalar o $nomeProcesso? [S/n]" opInstalar
	if [ "$opInstalar" -eq "s" || "$opInstalar" -eq "" ]
	then
		apt install $nomeProcesso -y
	fi
fi

while [ true ]
do
	verificaProcesso=$(ps -aux | grep $nomeProcesso | wc -l)

	if [[ $verificaProcesso > 3 ]]
	then
		echo "Processo em Execução"
		break
	else
		echo "Não está executando"
	fi
	sleep 2

done


