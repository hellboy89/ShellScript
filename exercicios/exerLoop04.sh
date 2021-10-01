#!/bin/bash

clear

# read -p "Informe o nome do arquivo a ser criado: " nomeArquivo
nomeArquivo="teste"
# read -p "Informe um conjunto de caracteres que será usado para preencher o arquivo: " conjCarac
conjCarac="Juan Cleber"
localDir="/home/backup/"
nuRandom=$RANDOM

echo -e "\n=====> Data: $(date) <=====" 

if [[ "$nomeArquivo" == "" || "$conjCarac" == "" ]]
then
	echo -e "\nO nome do arquivo ou caracteres, não pode ser nulo, tente novamente!"
else
	echo -e "\nCriando Arquivo!..."
	cd $localDir
	touch "$nomeArquivo"-"$nuRandom".out

	if [ -e "$nomeArquivo"-"$nuRandom".out ]
	then
		echo -e "\nCriado o Arquivo "$nomeArquivo"-"$nuRandom".out"
	fi

	echo -e "\nAdicionando $conjCarac no arquivo."

	while [ true ]
	do
		tamanhoArquivo=$(stat --printf=%s "$nomeArquivo"-"$nuRandom".out)
		if [ "$tamanhoArquivo" -le 1000 ]
		then
			echo "$conjCarac" >> "$nomeArquivo"-"$nuRandom".out
		else
			break
		fi
	done
fi


echo -e "\n=====> Conteúdo do Diretório $localDir <=====\n"
# "ls" abaixo para ordernar os ultimos no topo.
ls -alt $localDir | grep -v total | head -5

echo -e "\n=====> Peso do Arquivo "$nomeArquivo"-"$nuRandom".out <=====\n"
stat --printf=%s "$nomeArquivo"-"$nuRandom".out

echo -e "\n\n=====> Quantidade de Linhas "$nomeArquivo"-"$nuRandom" <=====\n"
cat "$nomeArquivo"-"$nuRandom".out | wc -l






<<comment-Diversos

echo -e "\n $localDir$nomeArquivo.out"

comment-Diversos
